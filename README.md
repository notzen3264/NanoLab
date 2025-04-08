# NanoLab

NanoLab is a simulation created with Processing, inspired by Jeffrey Ventrella's [Clusters](https://ventrella.com/Clusters/), designed to model the behaviors and interactions of microscopic organisms (cells) based on simple rules.

[Intro to Clusters](https://ventrella.com/Clusters/intro.html)

## How It Works

The core idea behind NanoLab is simple: local interactions between particles lead to complex, global behaviors, a concept known as **Emergence**. This is achieved through a set of basic rules governing attraction, repulsion, and movement, all of which are affected by the type of particle and its neighbouring environment.

- **Particle Types & Interactions**: Each particle has a unique color and specific rules for how it attracts or repels other types of particles. For example, 'food' particles might draw cells toward them, while 'toxins' will push them away. These interactions dictate how cells behave within the simulation, forming relationships and influencing their movements.
  
- **Force Fields**: The simulation uses force fields to determine how particles interact. These fields can be attractive or repulsive, and they don't have to be symmetrical. These forces cause the particles to move in strange ways, evolving the 'ecosystem' as the cells change their positions in response to nearby particles.

- **Emergent Complexity**: The beauty of the system lies in its simplicity. The basic rules applied to particle interactions lead to more complex behaviors, such as self-organization (where cells group together or form patterns), directed movement (cells seeking 'food' or avoiding 'toxins'), and the creation of more sophisticated structures, like multicellular organisms or tissues.

This simplicity allows NanoLab to simulate a range of biological processes, from cell division and growth to predator-prey dynamics and resource-seeking behaviors, much like in real ecosystems.

## Key Features

- **GUI**: Action/tool buttons and a stats panel to interact with the simulation.
- **Particle Type Selector**: Choose different types of particles to add to the simulation.
- **Mouse Interaction**: Add new particles to the simulation by clicking.
- **Simulation Stats**: Displays useful stats like time elapsed, FPS, particle count, active types, max particle speed, and rMax.
- **Mouse Push Tool**: Push particles around using your mouse to change the environment.
- **Simulation Controls**: Easily restart, pause, or clear particles with simple buttons.
- **Dynamic Behavior**: Create new particle types and interaction rules during the simulation.
- **Pause/Restart**: Pause or restart the simulation at any time.

## How to Use

1. Download the ZIP file from the repository.
2. Extract the files from the ZIP.
3. Open the extracted folder in your preferred Processing IDE.
4. Make sure all `.pde` files are present, then click **Run**.
5. Watch as complex cell processes and organisms emerge from just a few simple rules!

## Expected Behaviors

As you run the simulation, you’ll notice several emergent behaviors and phenomena, including:

- **Consistent Species**: Particles often form 2-4 consistent species that interact and grow based on the global attraction and repulsion rules, with varying sizes and populations of 1-5 per species.
- **Basic Cells**: Cells with simple structures, like nuclei and membranes, resembling single-celled organisms such as *Amoeba* or *Paramecium*.
- **Complex Cells**: Cells with more intricate structures, including defined organelles, membranes, and flagella or cilia, similar to advanced single-celled organisms.
- **Vibrating Cilia**: Cells with active cilia that vibrate for movement or feeding, similar to organisms like *Euglena* or *Chlamydomonas*.
- **Cell Merging & Growth**: Cells merge or grow in size, mimicking biological processes like mitosis or cell fusion.
- **Toxin Ejection**: Cells expel toxins, inspired by natural defense mechanisms such as those in *E. coli* or *Paramecium*.
- **Excretion for Propulsion**: Some cells use expulsion of particles to move or propel themselves, similar to *Euglena* using flagella.
- **Digestion**: Cells simulate digestion, akin to protozoa or human cells breaking down ingested food particles.
- **Multiple Membranes**: Cells with multi-layered membranes, inspired by organisms with complex structures like *bacterial endospores*.
- **Molecular Chains**: Chains of molecules form tissue-like structures, resembling protein chains or polymers.
- **Tadpoles**: Cells that resemble tadpoles, with heads containing organelles, flagella, and nuclei.
- **Segmented Worms**: Worm-like, segmented organisms mimicking animals like *Planaria* or *Nematodes*.
- **Bow-shaped Worm/Tadpole Heads**: Organisms with bow-shaped heads, similar to creatures like *Ctenophores* or *Cnidarians*.
- **Mitosis-like Reproduction**: Cells that reproduce via mitosis, splitting into identical copies once the nucleus grows to a certain size.
- **Multiple Nuclei**: Cells with more than one nucleus, like *Slime molds* or *Coenocytic algae*.
- **Enzyme Reactions**: Clumps of particles that catalyze reactions between other particles, inspired by enzyme-driven processes in organisms like yeast or bacteria.
- **Geometrically Shaped Cells**: Cells with unique geometric shapes, such as triangles, squares, or pentagons, similar to crystals or microorganisms like radiolarians.
- **Amoeba-like Cells**: Cells that morph and envelop others, mimicking the movement and engulfing behavior of amoebas.
- **Unstable Organisms**: Large, irregular organisms that change shape, split, or alter configuration, resembling organisms like *Slime molds*.
- **Cell Death**: Cells that degrade over time, reflecting the natural life cycle of organisms.
- **Chasing Prey or Food**: Some cells actively seek out food or other cells, mimicking the hunting or foraging behavior of microorganisms like *Amoebas* and *Paramecia*.

## Image Gallery

Here are some examples of what the simulation looks like in action:

### Example 1
![Example 1](path-to-your-image-1.jpg)

### Example 2
![Example 2](path-to-your-image-2.jpg)

### Example 3
![Example 3](path-to-your-image-3.jpg)
