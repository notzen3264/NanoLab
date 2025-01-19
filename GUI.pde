class GUI {
   Manager man;
   int selected;
   int frameIndex;
   float radius;
   bool running;
   bool justPressed;
   int fps;
   int lastTime;
   
   GUI(Manager man) {
      this.selected = 0;
      frameIndex = 0;
      this.man = man;
      GUIRadius = 17.5;
      running = true;
      justPressed = false;
      fps = 0;
      lastTime = millis();
   }
   
   void update() {
      if (mousePressed) {
         if (frameIndex % 2 == 0) {
            gui.mouseDown();
         }
         frameIndex ++;
      } else {
         frameIndex = 0;
         justPressed = false;
      }
      
      // Calculate FPS
      int currentTime = millis();
      if (currentTime - lastTime > 1000) {
         fps = frameCount;
         frameCount = 0;
         lastTime = currentTime;
      }

      show();
   }
   
   void show() {
      float GUIDiameter = GUIRadius * 2;
      float space = GUIDiameter + 10;
      
      for (int i = 0; i < man.types.size(); i++) {
         fill(man.types.get(i).c);
         noStroke();
         
         if (selected == i) {
            stroke(255);
            strokeWeight(3);
         }
         
         ellipse(space + i * space, space, GUIDiameter, GUIDiameter);
         noStroke();
      }
      fill(255, 0, 0);
      ellipse(width - space, space, GUIDiameter, GUIDiameter);
      
      fill(0, 255, 0);
      ellipse(width - 2 * space, space, GUIDiameter, GUIDiameter);
      
      fill(255, 255, 0);
      ellipse(width - 4 * space, space, GUIDiameter, GUIDiameter);
      
      fill(0, 255, 255);
      ellipse(width - 5 * space, space, GUIDiameter, GUIDiameter);
      
      noFill();
      stroke(255);
      strokeWeight(3);
      ellipse(width - 3 * space, space, GUIDiameter, GUIDiameter);
      
      textSize(20);
      fill(255);
      text("FPS: " + fps, space - GUIRadius, 100);
      text("Particles: " + currentParticles, space - GUIRadius, 130);
      text("Types: " + man.types.size(), space - GUIRadius, 160);
      text("Range: " + range, space - GUIRadius, 190);
      text("Source: " + useSource, space - GUIRadius, 220);
      text("Particle Life v1.8", space - GUIRadius, height - 30);
   }
   
   void mouseDown() {
      float GUIDiameter = GUIRadius * 2;
      float space = GUIDiameter + 10;
      
      PVector pos = new PVector(mouseX, mouseY);
      for (int i = 0; i < man.types.size(); i++) {
         if (pos.dist(new PVector(space + i * space, space)) <= GUIDiameter) {
            selected = i;
            mouse.selected = false;
            return;
         }
      }
      
      if (pos.dist(new PVector(width-space, space)) <= GUIDiameter) {
         man.particles.clear();
         currentParticles = 0;   
         createInitialParticles = false;
         return;
      }
      
      if (pos.dist(new PVector(width - 2 * space, space)) <= GUIDiameter && !justPressed) {
         justPressed = true;
         running = !running;
         return;
      }
      
      if (pos.dist(new PVector(width - 3 * space, space)) <= GUIDiameter) {
         mouse.selected = true;
         return;
      }
      
      if (pos.dist(new PVector(width - 4 * space, space)) <= GUIDiameter) {
         man.particles.clear();
         man.types.clear();
         man.randomTypes();
         man.randomRange();
         currentParticles = 0;
         createInitialParticles = true;
         return;
      }
      
      if (pos.dist(new PVector(width - 5 * space, space)) <= GUIDiameter) {
         man.particles.clear();
         currentParticles = 0;
         createInitialParticles = true;
         man.randomRange();
      }
      
      if (!mouse.selected) {
         man.addParticle(selected, mouseX, mouseY);
         currentParticles += 1;
      }
   }
}
