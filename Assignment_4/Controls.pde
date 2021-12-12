import processing.sound.*;

//Learned about how to play sound files from this tutorial
//https://medium.com/measuring-the-great-indoors/sounds-speech-in-processing-df1e908940c

//Learned how to use key and void keyPressed from here
//https://processing.org/reference/key.html and here
//https://processing.org/reference/keyPressed_.html

void keyPressed() {
  if (key == 'x') {
     xy.line(0, 0, 0, 0);
     stroke(222, 16, 64, 200);
     Stroke stroke = new Stroke();
     strokes.add(stroke);
     
     Xnote.play();
     Xnote.amp(.5);
     
     if (strokes.size() > 0) {
    stroke.points.add(new PVector(100, a));
    stroke.timestamp = millis();
   }
   marktime = millis();
  }
  if (key == 'c') {
     xy.line(0, 0, 0, 0);
     stroke(78, 16, 222, 200);
     Stroke stroke = new Stroke();
     strokes.add(stroke);
     
     Cnote.play();
     Cnote.amp(.5);
     
     if (strokes.size() > 0) {
    stroke.points.add(new PVector(300, a));
    stroke.timestamp = millis();
   }
   marktime = millis();
  }
  if (key == 'v') {
     xy.line(0, 0, 0, 0);
     stroke(250, 255, 103, 200);
     Stroke stroke = new Stroke();
     strokes.add(stroke);
     
     Vnote.play();
     Vnote.amp(.5);
     
     if (strokes.size() > 0) {
    stroke.points.add(new PVector(500, a));
    stroke.timestamp = millis();
   }
   marktime = millis();
  }
  if (key == 'b') {
     xy.line(0, 0, 0, 0);
     stroke(20, 144, 90, 200);
     Stroke stroke = new Stroke();
     strokes.add(stroke);
     
     Bnote.play();
     Bnote.amp(.5);
     
     if (strokes.size() > 0) {
    stroke.points.add(new PVector(700, a));
    stroke.timestamp = millis();
   }
   marktime = millis();
  }
}
