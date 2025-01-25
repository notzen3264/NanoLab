class GUI {
   Manager man;
   Button mouseButton;
   Button restartButton;
   Button newTypesButton;
   Button pauseButton;
   Button clearButton;
   
   int selected;
   int frameIndex;
   boolean running;
   boolean justPressed;
   int fps;
   int lastTime;
   
   GUI(Manager man) {
      this.selected = 0;
      frameIndex = 0;
      this.man = man;
      guiRadius = 17.5;
      guiDiameter = guiRadius * 2;
      space = guiDiameter + 10;
      guiColour = 100;
      guiButtonWidth = 100;
      guiButtonHeight = 45;
      running = true;
      justPressed = false;
      fps = 0;
      lastTime = millis();
      time = 0;
      
      mouseButton = new Button(width - (guiButtonWidth + space - guiRadius), 1 * (space - guiRadius), guiButtonWidth, guiButtonHeight, "Push Mouse", false);
      
      restartButton = new Button(width - (guiButtonWidth + space - guiRadius), 3 * (space - guiRadius), guiButtonWidth, guiButtonHeight, "Restart", false);
      
      newTypesButton = new Button(width - (guiButtonWidth + space - guiRadius), 5 * (space - guiRadius), guiButtonWidth, guiButtonHeight, "New Types", false);
      
      pauseButton = new Button(width - (guiButtonWidth + space - guiRadius), 7 * (space - guiRadius), guiButtonWidth, guiButtonHeight, "Pause/Play", false);
      
      clearButton = new Button(width - (guiButtonWidth + space - guiRadius), 9 * (space - guiRadius), guiButtonWidth, guiButtonHeight, "Clear", false);
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
      
      if (running) {
         int currentTime = millis();
         if (currentTime - lastTime > 1000) {
            fps = frameCount;
            frameCount = 0;
            lastTime = currentTime;
            time += 1;
         }
      }
      
      show();
   }
   
   void show() {
      for (int i = 0; i < man.types.size(); i++) {
         fill(man.types.get(i).c);
         noStroke();
         
         if (selected == i) {
            stroke(255);
            strokeWeight(3);
         }
         
         ellipse(space + i * space, space, guiDiameter, guiDiameter);
         noStroke();
      }
      
      mouseButton.display();
      restartButton.display();
      newTypesButton.display();
      pauseButton.display();
      clearButton.display();
      
      textSize(20);
      fill(255);
      textAlign(LEFT);
      text("Time Elapsed: " + time + "s", space - guiRadius, 100);
      text("FPS: " + fps, space - guiRadius, 130);
      text("Particles: " + currentParticles, space - guiRadius, 160);
      text("Types: " + man.types.size(), space - guiRadius, 190);
      text("rMax: " + rMax, space - guiRadius, 220);
      text("Max Particle Speed: " + maxSpeed, space - guiRadius, 250);   
      text("Particle Life v1.9", space - guiRadius, height - 30);
      text("By @CyMasterDev (Edward N)", width - (space - guiRadius) - 275, height - 30);   
   }
   
   void mouseDown() {
      PVector pos = new PVector(mouseX, mouseY);
      for (int i = 0; i < man.types.size(); i++) {
         if (pos.dist(new PVector(space + i * space, space)) <= guiDiameter) {
            selected = i;
            mouse.selected = false;
            mouseButton.isSelected = false;
            return;
         }
      }
      
      if (clearButton.isMouseOver()) {
         time = 0;
         man.particles.clear();
         currentParticles = 0;
         createInitialParticles = false;
         return;
      }
      
      if (pauseButton.isMouseOver() && !justPressed) {
         justPressed = true;
         running = !running;
         return;
      }
      
      if (mouseButton.isMouseOver()) {
         selected = null;
         mouse.selected = !mouse.selected;
         mouseButton.isSelected = !mouseButton.isSelected;
         return;
      }
      
      if (newTypesButton.isMouseOver()) {
         time = 0;
         man.particles.clear();
         currentParticles = 0;
         man.types.clear();
         man.randomTypes();
         man.randomRange();
         createInitialParticles = true;
         return;
      }
      
      if (restartButton.isMouseOver()) {
         time = 0;
         man.particles.clear();
         currentParticles = 0;
         createInitialParticles = true;
         man.randomRange();
      }
      
      if (!mouse.selected && selected != null) {
         man.addParticle(selected, mouseX, mouseY);
         currentParticles += 1;
      }
   }
}

class Button {
   float x, y, w, h;
   String label;
   boolean isSelected;
   
   Button(float x, float y, float w, float h, String label, boolean isSelected) {
      this.x = x;
      this.y = y;
      this.w = w;
      this.h = h;
      this.label = label;
      this.isSelected = false;
   }
   
   void display() {
      fill(guiColour);
      if (this.isSelected) {
         stroke(255);
         strokeWeight(3);
      } else {
         noStroke();
      }
      rect(x, y, w, h);
      fill(255);
      textSize(15);
      textAlign(CENTER, CENTER);
      text(label, x + w/2, y + h/2);
   }
   
   boolean isMouseOver() {
      return (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h);
   }
}


