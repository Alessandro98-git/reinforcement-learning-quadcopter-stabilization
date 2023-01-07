# Deep Reinforcement Learning based Robust Quadcopter Stabilization System
Neural Networks – Deep Reinforcement Learning – DDPG – SAC – TD3 – PPO
## Advanced Deep Learning Models and Methods - Research Project, ay 2021-2022

<em>The aim of the project is to implement a Reinforcement Learning Architecture able to control aerial quadricopters, even in commercial drones.
The scenario concerns the advanced stabilization of a drone in critical situations such as high-speed wind, recovery due to a free fall, a propeller failure and any kind of features that could ensure safety during a flight in densely populated areas.</em>

### Problem formulation

We developed the project in a virtual environment, using the AirSim simulator, based on Unreal Engine, which was created precisely for the purpose of supporting the development of reinforcement learning applications for vehicles and quadcopters.
The idea was to initially simulate it in a virtual environment, to train the agent through deep RL, developing an MLP that runs with low latency.
Future steps are the deployment of the solution, safely, on a physical drone.

### Setup Unreal and Visual Studio for AirSim

The project was tested on AirSim 1.7.0 + Visual Studio 2019 and AirSim 1.8.1 + Visual Studio 2022
1.	Install Unreal Engine 4.27 (install epic games launcher, put account, download Engine), open it and "fix now"
2.	Download AirSim prebuilt source code and the environment that you want
3.	Place the Environment in AirSim/Unreal/Environment
4.	Install Visual Studio 2019 + C++ dev / Python
	<br>Use Visual Studio 2019 Developer Command Prompt with Admin priv to run AirSim-1.7.0-windows/build.cmd (https://microsoft.github.io/AirSim/build_windows/)
5.	(https://microsoft.github.io/AirSim/unreal_blocks/)
	<br>Install .net framework 4.6.2 Developer (SDK), desktop runtime 3.1.24 (asks for it anyways)
	<br>Run AirSim-1.7.0-windows/Unreal/Environments/Blocks/update_from_git.bat
6.	Open (AirSim-1.7.0-windows/Unreal/Environments/Blocks/Blocks).sln with Visual Studio 2022 (or 2019 if the only installed), set Blocks as default (startup) Project, DebugGame Editor & Win64, press F5 (https://docs.microsoft.com/it-it/visualstudio/ide/how-to-set-multiple-startup-projects?view=vs-2022)
7.	Once Unreal is open with the project, click "Play" and use keyboard to move
8.	Unreal might lag if there is another window on top: Edit->Editor preferences->search Performance->disable "Use less CPU when in background"
9.	Copy the settings.json file inside the directory "C:\Users\<user>\Documents\AirSim"

### Setup Python environment for AirSim and RL

1. Create an Anaconda environment (https://microsoft.github.io/AirSim/apis/) using python 3.9:
```
pip install numpy, opencv-python, msgpack-rpc-python, airsim
```
3. Install Visual Studio Code & recommended python extensions
4. In order to use TF-Agents library:
```
conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0
pip install tensorflow==2.9
pip install tf-agents==0.13
pip install tensorflow-probability==0.17
pip install protobuf==3.20
```

### Run the sample project

1. Clone the repository
```bash
git clone https://github.com/lap98/RL-Drone-Stabilization.git
```
2. Open the environment in Unreal Engine
3. Run first.py in order to control the drone

### Execute the reinforcement learning algorithms

Simply execute one of the scripts, e.g. "training_TD3".
