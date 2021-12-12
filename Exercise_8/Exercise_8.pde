PImage start, correct;

void setup() {
  size (500, 500, P2D);
  
  start = loadImage("Startup.png");
  correct = loadImage("solved.png");
}
void draw() {
  background(start);
}
void keyPressed() {
  if (key == 'g' || key =='G' || key == 's' || key == 'S') {
    start = correct;
  }
}
