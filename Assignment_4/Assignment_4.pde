ArrayList<Stroke> strokes;
PImage bg;
int marktime = 0;
int timeout = 1000;
float a;

SoundFile Xnote, Cnote, Vnote, Bnote;

void setup() {
  size(800, 600, P2D);
  setupXYscope();
  
  bg = loadImage("1710 f.png");
  Xnote = new SoundFile(this,"Xnote.wav");
  Cnote = new SoundFile(this,"Cnote.wav");
  Vnote = new SoundFile(this,"Vnote.wav");
  Bnote = new SoundFile(this,"Bnote.wav");
  
  strokes = new ArrayList<Stroke>();
}

void draw() {
  background(bg);

  updateXYscope();
  a = a + 3;
  if(a > height) {
    a = 0;
  }
  
  for (int i=strokes.size()-1; i >= 0; i--) {
    Stroke stroke = strokes.get(i);
    stroke.run();
    if (!stroke.alive) strokes.remove(i);
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }

  surface.setTitle("" + frameRate);
}
