PImage generator, grid, diagonal, radial;

void setup() {
  size (800, 800, P2D);
  
  generator = loadImage("generator.png");
  grid = loadImage("gridletters.png");
  diagonal = loadImage("diagonalletters.png");
  radial = loadImage("radialletters.png");
}
void draw(){
  background(generator);
}
void keyPressed() {
  if (key == 'g' || key == 'G') {
      generator = grid;
    } else if (key == 'd' || key == 'D') {
      generator = diagonal;
    } else if (key == 'r' || key == 'R') {
      generator = radial;
    }
  }
