PImage bg;
color bgColor = color(0, 255, 0);
float circleSize = 100;

void setup() {
  bg = loadImage("bg.jpg");
  size(800, 600, P2D); // P2D enables 2D GPU acceleration
  background(bg);
}

void draw() {  
  if (mousePressed) {
    rectMode(CENTER);
    fill(127, 0, 255);
    stroke(127, 0, 255);
    line(mouseX, mouseY, pmouseX, pmouseY);
    rect(mouseX, mouseY, circleSize, circleSize);
  }
}
