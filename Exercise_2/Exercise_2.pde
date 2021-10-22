PImage img, img2;
int x; 

void setup() {
size(400,210);
img = loadImage("Punch-Out.png");
img2 = loadImage("MM Running.gif");
}

void draw(){
  background(300);
  x = constrain(x, 0, img.width - width); 
  image(img, -x, 0);
  x = frameCount; 

  int x = frameCount % img.width;
  for (int i = -x ; i < width ; i += img.width) {
    copy(img, 0, 0, img.width, height, i, 0, img.width, height);
  }
  image(img2, 20, 150);
}
