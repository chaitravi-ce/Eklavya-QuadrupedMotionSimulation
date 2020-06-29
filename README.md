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

Quadrupeds are considered stable and comparatively easier to program than hexapod, They are more stable than biped robot. In this project, we have programmed a quadruped using the creep gait algorithm to move it in the forward direction. Creep Gait Algorithm keeps the centre of gravity (C.O.G) inside the triangular base formed by three legs when one leg is moving. CoppeliaSim software is used to simulate this model with Lua Programming.

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
    ├── RESOURCES.md
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
Quadrupeds can be useful in a variety of situations. Main advantage of quadruped over wheeled robots is, the quadrupeds can move on rough terrains whereas wheeled robots cannot. Quadrupeds can also be used on slopes and stairs, where wheeled robots cannot be used.

### Demo
[Video of the Project](https://drive.google.com/file/d/14wP4J3AhH0u-MoTKX1THPP_viay8aTmF/view?usp=sharing)

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
* Refered [this](https://github.com/chaitravi-ce/Eklavya-QuadrupedMotionSimulation/blob/master/RESOURCES.md) for achieving the motion  

## License
[MIT License](https://github.com/chaitravi-ce/Eklavya-QuadrupedMotionSimulation/blob/master/LICENSE.md). 
