# NanoLab

NanoLab is a particle system simulation framework and software created with Processing, inspired by Jeffrey Ventrella's [Clusters](https://ventrella.com/Clusters/), designed to model the emergent behaviors and interactions of particles based on simple rules.

[Intro to Clusters](https://ventrella.com/Clusters/intro.html)

## How It Works

The core idea behind NanoLab is simple: local interactions between particles lead to complex, global behaviors, a concept known as **Emergence**. This is achieved through a set of basic rules governing attraction, repulsion, and movement, all of which are affected by the type of particle and its neighbouring environment.

- **Particle Types & Interactions**: Each particle has a unique color and specific rules for how it attracts or repels other types of particles. For example, 'food' particles might draw cells toward them, while 'toxins' will push them away. These interactions dictate how cells behave within the simulation, forming relationships and influencing their movements.
  
- **Force Fields**: The simulation uses force fields to determine how particles interact. These fields can be attractive or repulsive, and they don't have to be symmetrical. These forces cause the particles to move in strange ways, evolving the 'ecosystem' as the cells change their positions in response to nearby particles.

- **Emergent Complexity**: The beauty of the system lies in its simplicity. The basic rules applied to particle interactions lead to more complex behaviors, such as self-organization (where cells group together or form patterns), directed movement (cells seeking 'food' or avoiding 'toxins'), and the creation of more sophisticated structures, like multicellular organisms or tissues.

This simplicity allows NanoLab to simulate a range of biological processes, from cell division and growth to predator-prey dynamics and resource-seeking behaviors, much like in real ecosystems.

## Features

- **Type Selector**: Choose different types of particles to add to the simulation.
- **Mouse Interaction**: Add new particles to the simulation by clicking.
- **Statistics**: Displays useful stats like time elapsed, FPS, particle count, active types, max particle speed, viscosity etc.
- **Mouse Tool**: Push particles around using your mouse.
- **Action/Tool Buttons**: Easily restart, pause/play, create new types or clear particles with simple buttons.

## How to Use

1. Download the ZIP file from the repository.
2. Extract the files.
3. Open the extracted folder in your Processing IDE.
4. Ensure all `.pde` files are present, then click **Run**.

## Image Gallery

### Example 1
![Example 1](path-to-your-image-1.jpg)

### Example 2
![Example 2](path-to-your-image-2.jpg)

### Example 3
![Example 3](path-to-your-image-3.jpg)
