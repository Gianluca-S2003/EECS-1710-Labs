import processing.video.*;

Capture cam;

PImage bg;

void setup() {
  pixelDensity(1);
  size(740, 590);
  frameRate(5);
  bg = loadImage("bg.png");
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  cam.filter(GRAY);
  cam.filter(POSTERIZE, 4);
  image(cam, 50, 55);
  image(bg, 0, 0);
}
