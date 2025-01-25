class Manager
{
   ArrayList<Type> types = new ArrayList<Type>();
   ArrayList<Particle> particles = new ArrayList<Particle>();
   void show()
   {
      for (Particle particle: particles)
      {
         particle.show();
      }
   }
   
   void update()
   {
      background(0);
      
      for (Particle moving: particles)
      {
         moving.update(particles);
      }
      generateInitialParticles();
      show();
   }
   
   void addParticle(int type, float x, float y)
   {
      particles.add(new Particle(type, new PVector(x, y), types));
   }
   
   void addType(color c, float typeRadius, float[] attraction, float[] middle, float[] repelDist)
   {
      types.add(new Type(c, typeRadius, attraction, middle, repelDist, types));
   }
   
   void randomParticles(int num, float rad)
   {
      for (int i = 0; i < num; i++)
      {
         float x = random(-1, 1);
         float y = random(-sqrt(1 - x*x), sqrt(1 - x*x));
         addParticle((int) random(0, types.size()), width/2 + x*rad, height/2 + y*rad);
      }
   }
   
   void randomTypes()
   {
      int len = (int) random(3, 15);
      for (int i = 0; i < len; i++)
      {
         float[] a = makeArray(-3 * rMax, 3 * rMax, len);
         float[] m = makeArray(15 * rMax, 80 * rMax, len);
         float[] r = makeArray(2 * rMax, 15 * rMax, len);
         
         color c = color(random(50, 255), random(50, 255), random(50, 255));
         
         float t = random(2, 4);
         
         man.addType(c, t, a, m, r);
      }
   }
   
   float[] makeArray(float lower, float upper, int len)
   {
      float[] arr = new float[len];
      
      for (int i = 0; i < len; i++)
      {
         arr[i] = random(lower, upper);
      }
      
      return arr;
   }
   
   void randomRange() {
      if (useSource) {
         range = random(0, 1);
      } else {
         range = random(200, 2000);
      }
   }
   
   void generateInitialParticles() {
      if (gui.running) {
         if (currentParticles < initialParticles) {
            if (createInitialParticles) {
               createInitialParticlesChance = (int) random(0, 2);
               man.randomParticles(createInitialParticlesChance, random(0, range));
               currentParticles += createInitialParticlesChance;
            }
         } else {
            createInitialParticles = false;
         }
      }
   }
}
