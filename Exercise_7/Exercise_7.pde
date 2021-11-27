import peasy.*;

PeasyCam cam;
PShape ps;
PShader shader;
float spreadVal = 0.010;

void setup() {
  size(800, 600, P3D);
  
  cam = new PeasyCam(this, 400);
  
  shader = loadShader("example.glsl");
  shader.set("resolution", float(width), float(height));
  shader.set("rate", 0.5);
  
  ps = loadShape("Dedede.obj");
  ps.scale(3);
  ps.setFill(color(100, 203, 5));
  ps.setStroke(color(0, 150, 255));
}

void draw() { 
  background(30, 0, 140);
  
  shader.set("time", float(millis())/1000.0);
  shader(shader);
    
  stroke(250, 100, 0);
  for (int i=0; i<ps.getChildCount(); i++) {
    PShape child = ps.getChild(i);
    for (int j=0; j<child.getVertexCount(); j++) {
      PVector pos = child.getVertex(j);
      PVector spread = new PVector(random(-spreadVal, spreadVal), random(-spreadVal, spreadVal), random(-spreadVal, spreadVal));
      pos.add(spread);
      child.setVertex(j, pos);
    }
  }
  
  shape(ps); 

  surface.setTitle("" + frameRate);
}
