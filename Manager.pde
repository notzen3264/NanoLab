class Manager {
   ArrayList<Type> types = new ArrayList<Type>();
   ArrayList<Particle> particles = new ArrayList<Particle>();
   float collisionSoftness = 0.3;
   float maxSpeed = 6;
   
   void show() {
      for (Particle particle: particles) {
         particle.show();
      }
   }
   
   void update() {
      background(0);
      
      handleCollisions();
      
      for (Particle p : particles) {
         p.wrapParticles();
         p.update(particles);
         /*Experimental collision handling feature*/
         if (useHandleCollisions) {
            handleCollisions();
         }
      }
      
      generateInitialParticles();
      show();
   }
   
   void handleCollisions() {
      for (int i = 0; i < particles.size(); i++) {
         Particle a = particles.get(i);
         for (int j = i+1; j < particles.size(); j++) {
            Particle b = particles.get(j);
            
            PVector wrappedBPos = a.getShortestDistance(b.pos);
            PVector delta = PVector.sub(wrappedBPos, a.pos);
            float distance = delta.mag();
            float minDist = a.type.typeRadius + b.type.typeRadius;
            
            if (distance < minDist && distance > 0) {
               delta.normalize();
               delta.rotate(random(-0, 0)); // Add organic variation
               
               float overlap = minDist - distance;
               float displace = overlap * random(1, 3) * collisionSoftness;
               float totalMass = a.type.typeRadius + b.type.typeRadius;
               
               a.pos.sub(PVector.mult(delta, displace * (b.type.typeRadius/totalMass)));
               b.pos.add(PVector.mult(delta, displace * (a.type.typeRadius/totalMass)));
            }
         }
      }
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
      int len = (int) random(3, 16);
      for (int i = 0; i < len; i++)
      {
         float[] a = makeArray(-3, 3, len);
         float[] m = makeArray(15, 80, len);
         float[] r = makeArray(2, (int) random(15, 32), len);
         
         color c = color(random(100, 255), random(100, 255), random(100, 255));
         
         float t = random(1, 5);
         
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
      range = random(200, screenWidth);   
   }
   
   void generateInitialParticles() {
      if (gui.running) {
         if (currentParticles < initialParticles) {
            if (createInitialParticles) {
               if (instantlyCreateInitialParticles) {
                  man.randomParticles(initialParticles, initialParticles * 0.75);
                  currentParticles += initialParticles;
               } else {
                  step = (int) random(0, 2);
                  man.randomParticles(step, initialParticles * 0.75);
                  currentParticles += step;
               }
            }
         } else {
            createInitialParticles = false;
         }
      }
   }
}