class Dot {

  PVector position, target;
  float speed;
  boolean ready;
  int timer;
  
  Dot(float x, float y, PVector _target) {
    kirbe = loadImage("notadot.png");
    kirb = loadImage("notdot.png");
    dee = loadImage("Dee.png");
    position = new PVector(x, y);
    target = _target;
    speed = 0.08;
    ready = false;
  }
  
  void update() {
    position.lerp(target, speed);
    ready = position.dist(target) < 5;
  }
  
  void draw() {
    point(position.x, position.y);
    image(kirb, position.x, position.y);
  }
  
  void run() {
    update();
    draw();
  }

}
