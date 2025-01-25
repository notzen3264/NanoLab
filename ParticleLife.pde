int currentParticles = 0;
int initialParticles = 500;
boolean createInitialParticles = true;
boolean useSource = false;
float rMax = 1;
float maxSpeed = 6;

Manager man;
Mouse mouse;
GUI gui;

/*(v2.0: Optimization, New GUI, Collisions, Genes, and Evolution)*/

void setup()
{
   size(screenWidth, screenHeight);
   frameRate(60);
   man = new Manager();
   gui = new GUI(man);
   mouse = new Mouse();
   man.randomTypes();
   man.randomRange();
}

void draw()
{
   man.update();
   mouse.update();
   gui.update();
}