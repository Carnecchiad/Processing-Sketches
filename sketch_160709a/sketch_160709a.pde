import ddf.minim.*;

Minim m = new Minim(this);
AudioSample s;
AudioSample b;
PImage backgroundImage;
int x = 400;
int y = 250;
int xs = 2;
int ys = 3;
int rx = 100;
boolean brick = true;
void setup() {
  size(800, 500);
  noStroke();
  s = m.loadSample("blip.wav", 128);
  b = m.loadSample("destruction.wav", 128);
  noCursor();
  
  smooth();
  b.trigger();
}


void draw() {

  background(255);
  fill(255, 0, 0);
  ellipse(x, y, 20, 20);
  
  fill(0);
  rect(mouseX, 450, 120, 20);
  
  fill(random(255), random(255), random(255));

  if (brick) {
    rect(400, 100, 60, 15);
  }
  println(width - mouseX, x);

  x += xs;
  y += ys;
  if (x > width || x < 0) {
    xs = xs* -1;
    s.trigger();
  }
  if (y > height || y< 0) {
    ys = ys * -1;
    s.trigger();
  }

  if (y > 440 && x > mouseX && x < mouseX + 120 && y < 460) {
    ys = ys* -1;
    s.trigger();
  }
  if (brick) {
    if (y < 100 && y > 80&& x > 400 && x < 400 + 60) {
      ys = ys * -1;
      b.trigger();
      brick = false;  
      xs = xs * 10;
      ys = ys * 10;
}
  }
}

