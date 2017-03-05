float stamina = 200;
int sPotions = 2;
int birdX = 250;
int birdY = 250;
int pipeX = 900;
int pipeY = 300;
float birdYvelocity;
float gravity = 0.5;
int score = 0;
void setup(){
  size(900,600);
  
}
void draw(){
  
  birdY+=birdYvelocity;
  birdYvelocity+=gravity;
  noStroke();
  background(150,150,150);
  fill(139,69,19);
  ellipse(birdX,birdY,20,20);
  textSize(30);
  stamina +=0.5;
  if(intersects(birdX,birdY,pipeX,pipeY,58,600)){    
  System.exit(0);
  }
  if(intersects(birdX,birdY,pipeX,pipeY-730,58,600)){
   System.exit(0); 
  }
  if(birdY > height){
   System.exit(0); 
  }
  if(birdY < 0){
    System.exit(0);
  }
  if(stamina > 200){
   stamina = 200; 
  }
  
  fill(0,140,0);
  rect(pipeX,pipeY,58,600);
  rect(pipeX,pipeY - 730,58,600);
    fill(0,0,0);
  rect(40,70,stamina,30); 
  text("stamina potions: " + sPotions,30,30);
  pipeX-=5;
  if(pipeX< 0){
   pipeX = width; 
   pipeY = (int) random(100,500);
  }
}
void mousePressed(){
 if(stamina > 0){
  birdYvelocity = -7.5; 
  stamina -=20;
}
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength,int paddleHeight) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength && birdY < paddleY + paddleHeight)
return true;
else 
return false;
}
void cast(){
  
}
void keyPressed(){
if(sPotions > 0){
  if(key == ' '){
   stamina = 200;
   sPotions--;
  } 
}
}