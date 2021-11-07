PImage QStart, Q1, Q2, Q3, Q4, Q5;

void setup() {
  size(600,600, P2D);
  setupSttReceiver();
  
  QStart = loadImage("QStart.png");
  Q1 = loadImage("Q1.png");
  Q2 = loadImage("Q2.png");
  Q3 = loadImage("Q3.png");
  Q4 = loadImage("Q4.png");
  Q5 = loadImage("Q5.png");
}

void draw() {
  if (result.contains("greninja")) {
    QStart = Q1;
  } else if (result.contains("lucario")) {
    QStart = Q2;
  } else if (result.contains("mimikyu")) {
    QStart = Q3;
  } else if (result.contains("charizard")) {
    QStart = Q4;
  } else if (result.contains("umbreon")) {
    QStart = Q5;
  }
  
  image(QStart, 0, 0, width, height);    
}
