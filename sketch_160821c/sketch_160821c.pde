
int x = 150;
void setup() {
  size(500, 500);
  
}
void draw() {
  background(0);
  noStroke();
  fill(190,0,0);
  ellipse(150 + x, 200, 150, 150);
  fill(190,0,0);
  ellipse(212 + x, 200, 150, 150);
  if(mousePressed){
   fill(0);
   ellipse(80 + x,200,40,40); 
   
  for(int i = 0; i < 200; i++){
   fill(0,50 + i,0);
    ellipse(230 - i,200,40,40); 
     fill(0);
     ellipse(30,195,5,5);
  }
}
  fill(0,190,0);
  
  rect(176 + x, 103, 12, 32);
}







