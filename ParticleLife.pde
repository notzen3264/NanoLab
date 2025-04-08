//global setup variables
int currentParticles = 0;
int initialParticlesNum = 500;
boolean useInitialParticles = true;
boolean useInstant = true;
boolean useShaders = false;
/*VERY experimental feature, kind of works but heavily impacts peformance. Not recommended.*/
boolean useHandleCollisions = false;
float viscosity = 1;

//(v2.0: Optimization, Collisions (partial implementation))
//Desktop users may encounter errors when attempting to run this software, a fix will be implemented 
//!!! PLEASE change this boolean to true if your device is running desktop otherwise this program will definitely not run properly

boolean isDesktop = false;

Manager man;
Mouse mouse;
GUI gui;

void setup()
{
   if (isDesktop) {
      fullScreen();
   } else {
      size(screenWidth, screenHeight);
   }
   
   man = new Manager();
   gui = new GUI(man);
   mouse = new Mouse();
   man.randomTypes();
   man.randomRange();
   println("Growth, division, death, genesis, evolution, movement, behaviour, metamorphosis has been observed. (not physically based, genetic material is stored within the particle types themselves, not within the organisms, each organism has different numbers of particles, meaning each has different cumulative genetic codes)");
}

void draw()
{
   man.update();
   mouse.update();
   gui.update();
}