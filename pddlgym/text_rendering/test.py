import pddlgym
import gymnasium
import numpy as np
import imageio
from pddlgym_planners.fd import FD  # FastDownward


def demo(env_name, render=False, fps=1):
    env = pddlgym.make("PDDLEnv{}-v0".format(env_name.capitalize()), dynamic_action_space=True)
    env.unwrapped.fix_problem_index(0)
    print(env)

    # Planning with FastDownward (--alias seq-opt-lmcut)
    fd_planner = FD()

    obs, info = env.reset()

    plan = fd_planner(env.unwrapped.domain, obs)

    print("Plan:", plan)
    print("Statistics:", fd_planner.get_statistics())

    for _ in range(100):
        action = plan[_]
        print("=" * 80)
        print(f"Observation: {obs}")
        print(info["description"])
        print("Action space:", len(env.action_space.all_ground_literals(obs)))
        print(f"Action: {action}")
        obs, reward, terminated, truncated, info = env.step(action)
        # print(_, obs, reward, done, info)
        if terminated or truncated:
            break

    print("Plan:", plan)


if __name__ == "__main__":
    env_name = "blocks"
    demo(env_name, render=True)
