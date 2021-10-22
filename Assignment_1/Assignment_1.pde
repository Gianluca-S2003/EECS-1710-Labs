PImage bg, img, img1, img2, img3;

void setup() {
  size (900, 675, P2D);
  frameRate(2);

  img = loadImage("Skull_Tired.png");
  img1 = loadImage("Skull_Obj.png");
  img2 = loadImage("Angry_Skull.png");
  img3 = loadImage("Contempt_Skull.png");
  bg = loadImage("HHouse.jpg");
}
void draw() {
  background(bg);

  float x = random(440, 460);
  float y = random(327, 347);

  imageMode(CENTER);
  image(img, x, y, 200, 200);
  println(frameRate);
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      img = img3;
      frameRate(15);
    } else if (keyCode == DOWN) {
      img = img2;
      frameRate(35);
    }
  } else {
    img = img1;
    frameRate(20);
  }
}
