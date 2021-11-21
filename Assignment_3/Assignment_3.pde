PImage img1, img2, kirb, kirbe, dee, bg, bg2, bge;
ArrayList<Dot> dots;
ArrayList<PVector> targets1, targets2;
int scaler = 2;
int threshold = 200;
boolean imageToggled = false;

void setup() {
  size(512, 512, P2D);  
  img1 = loadImage("Kirby1.png");
  img2 = loadImage("Kirby2.png");
  bg = loadImage("GreenGreens.png");
  bg2 = loadImage("Finalbg.png");
  bge = loadImage("GreenGreens.png");
  
  img1.loadPixels();
  img2.loadPixels();
  
  targets1 = new ArrayList<PVector>();
  targets2 = new ArrayList<PVector>();
  
  for (int x = 0; x < img2.width; x += scaler) {
    for (int y = 0; y < img2.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      int loc = x + y * img2.width;

      if (brightness(img2.pixels[loc]) > threshold) {
        targets2.add(new PVector(x, y));
      }
    }
  }

  dots = new ArrayList<Dot>();

  for (int x = 0; x < img1.width; x += scaler) {
    for (int y = 0; y < img1.height; y += scaler) {
      int loc = x + y * img1.width;
      
      if (brightness(img1.pixels[loc]) > threshold) {
        int targetIndex = int(random(0, targets2.size()));
        targets1.add(new PVector(x, y));
        Dot dot = new Dot(x, y, targets2.get(targetIndex));
        dots.add(dot);
      }
    }
  }
}

void draw() { 
  background(bg);
  
  boolean flipTargets = true;

  for (Dot dot : dots) {
    dot.run();
    if (!dot.ready) flipTargets = false;
  }
  
  if (flipTargets) {
    for (Dot dot : dots) {
      if (!imageToggled) {
        int targetIndex = int(random(0, targets1.size()));
        dot.target = targets1.get(targetIndex);
        kirb = dee;
        bg = bg2;
      } 
      else {
        int targetIndex = int(random(0, targets2.size()));
        dot.target = targets2.get(targetIndex);
        kirb = kirbe;
        bg = bge;
      }
    }
    imageToggled = !imageToggled;
  }
    
  surface.setTitle("" + frameRate);
}
