# Particle Life

A particle simulation created in Processing to model emergent life and behaviors based on simple rules. The simulation mimics microorganisms (cells) and various forms of life.

## How the Algorithm Works

Particle Life uses a simple approach to generate emergent behaviors and interactions between particles. The core principle is that simple, local interactions among particles can lead to complex, global behaviors (Emergence). This is achieved through basic rules for attraction, repulsion, and movement, all influenced by each particle's type and its surrounding environment.

- **Particle Types and Interactions**: Each particle type has a colour and a specific attraction and repulsion rules with other particle types. These rules dictate how particles move, interact, and form relationships. For example, 'food' particles may attract cells, while 'toxins' repel them. These interactions influence how each cell behaves in the simulation.
  
- **Force Fields**: The algorithm uses force fields to determine how particles interact. These don't have to be symmetrical. These forces are based on the distance between particles and can be attractive or repulsive which causes motion This results in dynamic, evolving systems where cells constantly adjust their positions based on nearby particles.

- **Emergent Complexity**: By applying simple interaction rules, Particle Life creates complex, emergent behaviors. These behaviors include self-organization (where cells group together or form patterns), directed movement (cells chasing food or avoiding toxins), and the creation of more complex structures such as multicellular organisms or tissues.

The simplicity of the algorithm allows for the simulation of a variety of biological behaviors, from cell division and growth to predator-prey interactions and resource seeking. Just like in real-life ecosystems.

## Features
- **Particle Type Selector**: Choose different types of particles for the simulation.
- **Mouse Interaction**: Add particles to the simulation by clicking.
- **Simulation Stats**: Displays FPS, particle count, active types, range, and sources.
- **Action Buttons**: Quick access to simulation controls.
- **Mouse Push Tool**: Push particles around using the mouse.
- **Simulation Controls**: Restart, pause, or clear particles with a button.
- **Dynamic Particle Behavior**: Create new particle types and rules during the simulation.
- **Pause/Restart**: Pause or restart the simulation at any time.

## How to Use
1. Download the ZIP file of this repository.
2. Extract the contents of the ZIP file.
3. Open the extracted folder in your preferred Processing IDE.
4. Make sure all `.pde` files are present and click **Run**.
5. Watch as complex cell processes and organisms emerge from simple rules!

## Expected Behaviors
The simulation includes a variety of emergent behaviors, such as:

- **Consistent Species**: Particles will usually form 2-4 consistent species (with similar arrangements due to the global attraction and repulsion rules) with varying sizes and a population of 1-5 of each species.
- **Basic Cells**: Cells with defined nuclei and membranes, similar to single-celled organisms like *Amoeba* or *Paramecium*.
- **Advanced and Complex Cells**: Cells that have complex and clearly defined shapes with nuclei, membranes, organelles, flagellum, cilia, or cell walls.
- **Vibrating Cilia**: Cells with active, vibrating cilia, mimicking organisms like *Euglena* or *Chlamydomonas* that use cilia or flagella for movement and feeding.
- **Cell Merging & Growth**: Cells that merge and grow in size, resembling the fusion or division of cells in real life (e.g., mitosis).
- **Toxin Ejection**: Cells ejecting particles or toxins, inspired by real-life defense mechanisms like those in *E. coli* or *Paramecium* that expel harmful substances to protect themselves.
- **Excretion for Propulsion**: Cells that expel particles to move or propel themselves, similar to the way certain cells (like *Euglena*) use flagella or other appendages for movement.
- **Digestion**: Cells with a digestion process, akin to the ingestion and breakdown of food particles in real-life protozoa or human cells (e.g., lysosomes).
- **Multiple Membranes**: Cells featuring more than one membrane or wall, mimicking certain complex cells with multi-layered structures, like *bacterial endospores*.
- **Molecular Chains**: Chains of molecules that may form tissue clumps or "hoops," similar to protein chains or polymers found in living organisms.
- **Tadpoles**: Tadpole-like cells with heads containing organelles, nuclei, and flagellum, resembling early-stage animal embryos or multicellular organisms in the process of development.
- **Segmented Worms**: Worm-like organisms with segmented bodies, mimicking the behavior of simple multicellular animals like *Planaria* or *Nematodes*.
- **Bow-shaped Worm/Tadpole Heads**: Organisms with a characteristic "bow" shape at the front, similar to certain marine creatures like *Ctenophores* or *Cnidarians*.
- **Mitosis-like Reproduction**: Cells that reproduce via mitosis, splitting into two identical copies once the nucleus reaches a certain size, similar to most eukaryotic cells.
- **Multiple Nuclei**: Cells with more than one nucleus, akin to multinucleate organisms like *Slime molds* or *Coenocytic algae*.
- **Enzyme Reactions**: Clumps that catalyze reactions between other particles, similar to enzyme-driven processes found in cells like *yeast* or *bacteria*.
- **Geometrically Shaped Cells**: Cells with triangular, square, pentagonal, or other geometric forms, inspired by geometric formations in nature (e.g., *crystals* or certain microorganisms).
- **Amoeba-like Cells**: Cells that morph and envelop other cells, behaving similarly to amoeboid organisms that use pseudopodia for movement and engulfing food.
- **Unstable Organisms**: Irregular or large organisms that change shape, split, or shift configurations, mimicking the way some organisms (like *Slime molds*) alter their form.
- **Cell Death**: Cells that undergo death or degradation over time, reflecting the natural life cycle of cells or organisms in nature.
- **Chasing Prey or Food**: Certain cells will change direction using their cilia (if they have them) or slither towards them to chase free-floating particles or prey cells. This behavior simulates the hunting or foraging behavior of real microorganisms like *Amoebas* and *Paramecia*, which move towards food sources or other organisms they can engulf. This dynamic adds a layer of complexity where cells interact with their environment by actively seeking resources to survive and grow.

## Image Gallery

Here is a space to showcase example images of the simulation:

### Example 1
![Example 1](path-to-your-image-1.jpg)

### Example 2
![Example 2](path-to-your-image-2.jpg)

### Example 3
![Example 3](path-to-your-image-3.jpg)
