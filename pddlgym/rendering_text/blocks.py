from typing import Any, Tuple, Callable, Optional, Union, List
import re
from functools import lru_cache

import pddlgym
from pddlgym.spaces import (
    LiteralActionSpace,
    LiteralSpace,
    LiteralSetSpace,
)
from pddlgym.structs import (
    State,
    Literal
)

def literal_to_list(literal: Literal) -> List[str]:
    elements = re.findall(r"[\w:]+(?=[,()])|(?<=[,()])[\w:]+", str(literal))
    # print(elements)
    for element in elements:
        if 'clear' in elements:
            assert len(elements) == 2
            text = f"{elements[1]} is clear"
        elif 'on' in elements:
            assert len(elements) == 3
            text = f"{elements[1]} is on top of {elements[2]}"
        elif 'ontable' in elements:
            assert len(elements) == 2
            text = f"{elements[1]} is on the table"
        elif 'handempty' in elements:
            assert len(elements) == 2
            text = f"the robot's hand is empty"
        elif 'handfull' in elements:
            assert len(elements) == 2
            text = f"the robot's hand is full"
        elif 'holding' in elements:
            assert len(elements) == 2
            text = f"the robot is holding {elements[1]}"
        else:
            assert False, f"Unknown literal: {literal}"
    return text

@lru_cache(maxsize=None)
def convert_state_to_text(state: State):
    """
        State type looks like the following:
        State(
            literals=frozenset({
                clear(a:block), on(b:block,c:block), on(a:block,b:block), ontable(f:block),
                handempty(robot:robot), on(e:block,f:block), on(d:block,e:block), on(c:block,d:block)
            }),
            objects=frozenset({
                c:block, robot:robot, d:block, a:block, b:block, f:block, e:block
            }),
            goal=AND[on(b:block,c:block), on(c:block,d:block), on(d:block,e:block), on(e:block,f:block), on(f:block,a:block)]
        )

        This function converts the state into a text representation. The propositional literals are sorted and converted into text.
        The text representation is as follows:
        [Domain objects] a:block, b:block, c:block, d:block, e:block, f:block, robot:robot [Goal] b:block is on top of c:block, c:block is on top of d:block, d:block is on top of e:block, e:block is on top of f:block, f:block is on top of a:block [Current Observation] a:block is clear, a:block is on top of b:block, b:block is on top of c:block, c:block is on top of d:block, d:block is on top of e:block, e:block is on top of f:block, f:block is on the table, the robot's hand is empty
    """
    literals = state.literals
    objects = state.objects
    goal = state.goal

    domain_objects = []
    for obj in objects:
        domain_objects.append(str(obj))
    domain_objects = "[Domain Objects] " + ", ".join(sorted(domain_objects))

    current_observation = []
    for literal in literals:
        text = literal_to_list(literal)
        current_observation.append(text)
    current_observation = "[Current Observation] " + ", ".join(sorted(current_observation))

    goal_text = []
    goal_literals = re.split(', ', str(goal)[4:-1])
    for literal in goal_literals:
        text = literal_to_list(literal)
        goal_text.append(text)
    goal_text = "[Goal] " + ", ".join(sorted(goal_text))

    return domain_objects + " " + goal_text + " " + current_observation


def render(state: State, action: Optional[Literal] = None) -> str:
    # return "test"
    state_text = convert_state_to_text(state)
    if action is not None:
        action_text = f"Action: {action}"
        return state_text + "\n\n" + action_text
    return state_text
