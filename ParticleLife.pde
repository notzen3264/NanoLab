//global setup variables
int currentParticles = 0;
int initialParticles = 500;
boolean createInitialParticles = true;
boolean instantlyCreateInitialParticles = false;
boolean useShaders = false;
boolean debug = false;
/*VERY experimental feature, works but heavily impacts peformance. Not recommended.*/
boolean useHandleCollisions = false;
boolean showStartupMsg = false;
float maxSpeed = 6;

//(v2.0: Optimization, Collisions (partial implementation))
//Desktop users may encounter errors when attempting to run this code, a fix will be implemented 
//!!! PLEASE change this boolean to true if your device is running the desktop ide otherwise this program will definitely not run properly

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
   
   if (!debug && showStartupMsg) {
      println("Welcome to Particle Life v1.9, where you can simulate artificial microorganisms, microbes, parasites and various creatures resembling cells, bacteria and other forms of life. Watch creatures form from particles and then see them grow, multiply, eat, merge, move, die, explode, evolve and so much more!");
   }
}

void draw()
{
frameRate(60);
   man.update();
   mouse.update();
   gui.update();
}