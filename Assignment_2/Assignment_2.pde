// Some of the mechanics in this game were featured in the YouTube video, 
// "Make flappy birds in 50 lines of Processing Java/JS"
// link: https://www.youtube.com/watch?v=bV3joOueucg

PImage bg;
PImage bg1;
PImage bg2;
PImage bgstart;
PImage bird;
PImage wall;
PImage start;
PImage finalbg;
int gamestate = 1;
int score = 0;
int x = -200, y, vy = 0;
int[] wx = new int[2];
int[] wy = new int[2];

void setup() {
  size(600,600);
  fill(255, 0, 170);
  textSize(40);
  bg = loadImage("bg.png");
  bird = loadImage("Bird.png");
  wall = loadImage("Wall.png");
  start = loadImage("start.png");
  bg1 = loadImage("bg1.png");
  bg2 = loadImage("bg2.png");
  bgstart = loadImage("bg2.png");
  finalbg = loadImage("bg4.png");
}
void draw() {
  if (gamestate == 0) {
    imageMode(CORNER);
    image(bg2, x, 0);
    image(bg2, x+bg2.width, 0);
    x -= 6;
    vy += 1;
    y += vy;
    if(x == -600) x = 0;
    for(int i = 0 ; i < 2; i++) {
      imageMode(CENTER);
      image(wall, wx[i], wy[i] - (wall.height/2+100));
      image(wall, wx[i], wy[i] + (wall.height/2+100));
      if(wx[i] < 0) {
        wy[i] = (int)random(200,height-200);
        wx[i] = width;
      }
      if(wx[i] == width/2) {
        score++;
      }
      if( y > height || y < 0 || (abs(width/2-wx[i])<25 && abs(y-wy[i])>100)) {
        gamestate = 1;
      }
      wx[i] -= 6;
    }
    image(bird, width/2, y);
    text(""+score, width/2-15, 50);
    if(score==10) {
      bg2 = bg1;
    }
    if(score==25) {
      bg2 = bg;
    }
    if(score==50) {
      bg2 = finalbg;
    }
  }
  else {
    imageMode(CENTER);
    image(start, width/2,height/2);
    text("Press any key to start", 200, 300);
  }
}
void keyPressed() {
  vy = -10;
  if(gamestate==1) {
    bg2 = bgstart;
    wx[0] = 600;
    wy[0] = height/2;
    wx[1] = 900;
    wy[1] = 300;
    x = gamestate = score = 0;
    y = height/2;
    gamestate = 0;
  }
}
