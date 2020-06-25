# Quadruped Motion Simulation

The project is about modelling a 4-legged robot which can move forward. The project uses A Dog-Shaped Quadruped Model.

## Domains:
  - ### Forward and Inverse Kinematics
  - ### Gait Analysis and Generation
  - ### Coding
 
## Table of Contents

* [About the Project](#about-the-project)
  * [Tech Stack](#tech-stack)
  * [File Structure](#file-structure)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Results and Demo](#results-and-demo)
* [Future Work](#future-work)
* [Troubleshooting](#troubleshooting)
* [Contributors](#contributors)
* [Acknowledgements and Resources](#acknowledgements-and-resources)
* [License](#license)

## About The Project

Quadrupeds are considered stable and comparatively easier  
Refer this [documentation](https://link/to/report/)

### Tech Stack
The project uses Coppeliasim (V-rep) Software for simulation of motion of robot. For further reference : 
* [Coppeliasim](https://www.coppeliarobotics.com/)
  

### File Structure
    .
    ├──  Gait           # Algorithm to move the bot forward and remain stable
    ├── Kinematics          
    │   ├── Forward Kinematics        
    │   └── Inverse Kinematics          
    ├── Codes                   
    ├── LICENSE
    ├── README.md 

    
## Getting Started
### Prerequisites

For Simulation of the model:
```sh
- CoppeliaSim
```
Visit [CoppeliaSim](https://www.coppeliarobotics.com/downloads) to download the software. Preferably the Edu Version. 
 
### Installation
1. Clone the repo
```sh
git clone https://github.com/chaitravi-ce/Eklavya-QuadrupedMotionSimulation.git
```

## Usage

Use the  [Gait Algorithm Code](https://github.com/chaitravi-ce/Eklavya-QuadrupedMotionSimulation/tree/master/Codes) as an Associated Non-Threaded Child Script attached to the body of the quadruped. 

## Results and Demo
Quadrupeds can be used in a
[**result screenshots**](https://result.png)  

| Use  |  Table  |
|:----:|:-------:| 
| For  | Comparison|

## Future Work

- [x] Forward Movement of Quadruped
- [ ] Obstacle Avoidance
- [ ] Reverse Movement of Quadruped
- [ ] Left Right Turns

## Troubleshooting
* When solving Kinematics, there are many possible solutions to an equation (Remember)
* If a problem is encountered while working with the simulation model, read the coppeliasim official docs.
* Check the joint properties before starting simulation.
## Contributors
* [Chaitravi Chalke](https://github.com/chaitravi-ce)
* [Sakshi Chikshe](https://github.com/Sakshi-0311)

## Acknowledgements and Resources
* [SRA VJTI](http://sra.vjti.info/) Eklavya 2020  
* Refered [this](https://link) for achieving the motion  

## License
Describe your [License](LICENSE) for your project. 