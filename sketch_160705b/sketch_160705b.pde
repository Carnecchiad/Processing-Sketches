float x = 0;
float y = 0;
int w = 20;
int h = 20;
int wi = 1;
int hi = 1;
float speed = 0.2;
int random1 = (int)random(100);
int random2 = (int)random(100);
void setup() {
  
  size(1000, 1000);
  background(255, 0, 0);
  noCursor();
}
void draw() {
 if(mousePressed){
  
  fill(0);
  
  line(random(1000), random(1000), random(1000), random(1000));
  fill(random(256),random(256),random(256));
  println(sqrt(random1*random2));
  ellipse(mouseX, mouseY, w, h);
  x = x +speed;
  y = y +speed;
  if(x > width){
   speed = speed* -1; 
  }
  if(x < 0 ){
  speed = speed * -1;  
  }
  
  w = w + wi;
  h = h + hi;
  if (w > 500) {
    wi = wi * -1;
  }
  if (h > 500) {
    hi = hi * -1;
  }
  if (w < 0) {
    wi = wi * -1;
  }
  if (h < 0) {
    hi = hi * -1;
  }
}
}
