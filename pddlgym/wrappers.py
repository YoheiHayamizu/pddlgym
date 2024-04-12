import os
from functools import lru_cache
import gymnasium as gym
from typing import Optional

import pddlgym
from pddlgym.structs import Type, Predicate


CACHE_SIZE = None


class PDDLGymWrapper(gym.Wrapper):
    """
    Wrapper for PDDLGym environments.

    Observation:
        Observations are represented as a vector of literals and actions.
        The textual representation of observations is converted into a vector representation
        using an encoder.
        There are two types of encoders: bag of words (bow) and sentence embeddings (se).

    Actions:
        Actions are represented as Discrete actions.
    """

    cache_size = CACHE_SIZE

    def __init__(
        self,
        env: gym.Env,
        actions_in_obs: bool = False,
        cache_size: int = CACHE_SIZE,
        **kwargs
    ):
        super(PDDLGymWrapper, self).__init__(env, **kwargs)

        self.pddlgym_env = env.unwrapped
        assert self.pddlgym_env.dynamic_action_space, "The environment must have a dynamic action space"

        self.actions_in_obs = actions_in_obs
        self.cache_size = cache_size
        self.domain_name = self.pddlgym_env.spec.id[7:-3].lower()
        self.obs_literals = None
        self.action_literals = None
        self.set_literals()

        print(f"observation_space: {self.observation_space}")
        print(f"action_space: {self.action_space}")

    def reset(self, *, seed: Optional[int] = None, options: Optional[dict] = None):
        observation, info = self.env.reset(seed=seed, options=options)
        valid_actions = self.get_valid_actions(observation)
        if self.actions_in_obs:
            info['description'] = self.pddlgym_env.text_render(observation, valid_actions)
            info['valid_actions'] = valid_actions
        else:
            info['description'] = self.pddlgym_env.text_render(observation)
            info['valid_actions'] = valid_actions
        valid_actions_idx = self.get_valid_action_idx(valid_actions)
        # info['valid_actions_idx'] = valid_actions_idx
        # info['valid_action_mask'] = self.get_valid_action_mask(observation)
        return observation, info

    def step(self, action):
        # action_literal = self.action(action)
        observation, reward, terminated, truncated, info = self.env.step(action)
        valid_actions = self.get_valid_actions(observation)
        if self.actions_in_obs:
            info['description'] = self.pddlgym_env.text_render(observation, valid_actions)
            info['valid_actions'] = valid_actions
        else:
            info['description'] = self.pddlgym_env.text_render(observation)
            info['valid_actions'] = valid_actions
        valid_actions_idx = self.get_valid_action_idx(valid_actions)
        # info['valid_actions_idx'] = valid_actions_idx
        # info['valid_action_mask'] = self.get_valid_action_mask(observation)
        return observation, reward, terminated, truncated, info


    @lru_cache(maxsize=cache_size)
    def get_valid_actions(self, obs):
        valid_actions = sorted(list(self.pddlgym_env.action_space.all_ground_literals(obs, valid_only=True)))
        return valid_actions

    def get_valid_action_idx(self, actions):
        valid_actions_idx = [self.alit2idx[action] for action in actions]
        return valid_actions_idx

    # def get_valid_action_mask(self, obs):
    #     mask = np.zeros(len(self.action_literals), dtype=np.int8)
    #     _, valid_actions_idx = self.get_valid_actions(obs)
    #     mask[[valid_actions_idx]] = 1
    #     return mask

    def set_literals(self):
        # Store all the literals in the environment
        problem_files = set()
        self.obs_literals = set()
        self.action_literals = set()
        while len(problem_files) < len(self.pddlgym_env.problems):
            state, info = self.pddlgym_env.reset()

            problem_name = info['problem_file'].split('/')[-1]
            if problem_name in problem_files:
                continue
            problem_files.add(problem_name)

            self.obs_literals.update(self.observation_space.all_ground_literals(state, valid_only=False))
            self.action_literals.update(self.action_space.all_ground_literals(state, valid_only=False))

            if self.pddlgym_env.problem_index_fixed:
                break
        # Convert the literals into a dictionary for faster lookup
        self.olit2idx = {literal: i for i, literal in enumerate(sorted(self.obs_literals))}
        self.alit2idx = {literal: i for i, literal in enumerate(sorted(self.action_literals))}
        self.oidx2lit = {i: literal for i, literal in enumerate(sorted(self.obs_literals))}
        self.aidx2lit = {i: literal for i, literal in enumerate(sorted(self.action_literals))}

        # print(f"# of obs_literals: {len(self.obs_literals)}")
        # print(f"# of action_literals: {len(self.action_literals)}")
        # print(f"obs_literals: {self.obs_literals}")
        # print(f"action_literals: {self.action_literals}")


class MacroActionWrapper(gym.ActionWrapper):
    """
    Wrapper for PDDLGym environments. This wrapper converts the literal actions into macro actions.
    """
    def __init__(self, env):
        super(MacroActionWrapper, self).__init__(env)

        self.action_templates = sorted(env.action_space.predicates)
        self.action_params = sorted(self.get_objects_from_problems())
        self.max_arity = self.get_max_arity()

        self.action_space = gym.spaces.MultiDiscrete([len(self.action_templates)] + [len(self.action_params)] * self.max_arity)

        # print(f"action template: {self.action_templates}")
        # print(f"action params: {self.action_params}")
        # print(f"action space: {self.action_space}")

    def step(self, action: gym.spaces.MultiDiscrete):
        action_template_idx = action[0]
        action_param_idxs = action[1:]
        action_template = self.action_templates[action_template_idx]
        action_params = [self.action_params[idx] for idx in action_param_idxs]
        action = self.action(action_template, action_params)
        return self.env.step(action)

    def action(self, action_template: Predicate, action_params: list):
        return action_template(*action_params)

    def get_objects_from_problems(self):
        objects = set()
        for problem in self.env.problems:
            objects.update(problem.objects)
        return list(objects)

    def get_max_arity(self):
        max_arity = 0
        for action_template in self.action_templates:
            max_arity = max(max_arity, action_template.arity)
        return max_arity

    def get_action_idx(self, action: Predicate):
        action_template = action.predicate
        action_params = action.variables
        action_template_idx = self.action_templates.index(action_template)
        action_param_idxs = [self.action_params.index(param) for param in action_params]
        return [action_template_idx] + action_param_idxs