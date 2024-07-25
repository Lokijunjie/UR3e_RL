import gymnasium as gym
from stable_baselines3 import PPO
from stable_baselines3.common.vec_env import SubprocVecEnv,DummyVecEnv

# 导入你的环境
from base_env import BaseEnv

# def main():
#     # 创建环境
#     env = DummyVecEnv([lambda: ReachEnv()])

#     # 初始化PPO算法
#     model = PPO("MlpPolicy", env, verbose=1)

#     # 训练模型
#     model.learn(total_timesteps=10000)

#     # 保存模型
#     model.save("ppo_reach_env")

#     # 测试模型
#     obs = env.reset()
#     for _ in range(5):
#         action, _states = model.predict(obs)
#         obs, rewards, dones, info = env.step(action)
#         #env.render()

# if __name__ == "__main__":
#     main()

def train():
    # 创建环境
    env = SubprocVecEnv([lambda: BaseEnv()])

    # 初始化PPO算法
    model = PPO("MlpPolicy", env, verbose=1)

    # 训练模型
    model.learn(total_timesteps=2000000)

    # 保存模型
    model.save("ppo_reach_env")

def test():
    env = None
  
    # 创建环境
    env = DummyVecEnv([lambda: BaseEnv()])

    # 加载模型
    model = PPO.load("ppo_reach_env")

    # 测试模型
    obs = env.reset()
    for _ in range(500):
        action, _states = model.predict(obs)
        obs, rewards, dones, info = env.step(action)
        #print("rewards: ", rewards)

    env.close()

if __name__ == "__main__":
    # # 训练模型
    #train()
    
    # 测试模型
    test()