import random
import math
from typing import overload

from base_env import BaseEnv

import numpy as np

import gymnasium as gym
from gymnasium.spaces import Box


class ReachEnv(BaseEnv):
    """
    Reach env class.
    """

    def __init__(self):
        super().__init__()
        self.target_x_range = (0.2, 0.4)
        self.target_y_range = (-0.2, 0.2)
        self.target_z_range = (0.4, 0.7)

        self.reach_threshold = 0.01

        # Target position in base_link frame
        self.target_position = None
    def _define_observation_space(self) -> Box:
        """
        Define/Get observation space.
        """
        observation_space = Box(float("-inf"), float("inf"), (17,))
        return observation_space

    def get_obs(self) -> np.ndarray:
        """
        Get agent's observation.
        The observation contains robot state and a relative position of target object
        Returns:
            (np.ndarray) : agent's observation
        """
        obs = self.get_robot_state()
        target_realtive_position = self.get_object_position_relative_to_base_link(
            self.target
        )
        obs.extend(target_realtive_position)
        return np.array(obs)

    def get_reward(self) -> float:
        """
        This reward function is based on the distance between target object and tip.
        Returns:
            (float) : reward
        """
        distance_between_tip_and_target = self.get_distance_from_tip(
            self.target.get_position()
        )
        return -math.log10(distance_between_tip_and_target / 10 + 1)

    def reset_objects(self):
        """
        Reset a target object.
        """
        random_point_x = random.uniform(self.target_x_range[0], self.target_x_range[1])
        random_point_y = random.uniform(self.target_y_range[0], self.target_y_range[1])
        random_point_z = random.uniform(self.target_z_range[0], self.target_z_range[1])
        self.target.set_position([random_point_x, random_point_y, random_point_z])

    def is_goal_state(self) -> bool:
        """
        If the target object and the tip are close, it is considered as a goal state.
        """
        distance_between_tip_and_target = self.get_distance_from_tip(
            self.target.get_position()
        )
        return distance_between_tip_and_target <= self.reach_threshold

   