import ddf.minim.*;
Minim minim;
AudioPlayer sound;

PImage pizza;
PImage amazing;
void setup(){
minim = new Minim(this);
  sound = minim.loadFile("topping.mp3",512);
  pizza = loadImage("pizza.gif");
amazing = loadImage("amazing.gif");
  noStroke();
  size(500,500);
fill(255,222,173);
ellipse(width/2,height/2,450,450);
fill(255,0,0);
ellipse(width/2,height/2,390,390);
fill(255,153,0);
ellipse(width/2,height/2,340,340);
}
void draw(){
if(mousePressed && (mouseButton == LEFT)){
  pizza.resize(100,100); 
  image(pizza,mouseX - 20,mouseY - 20); 
  sound.play();
}
if(mousePressed && (mouseButton == RIGHT)){
  amazing.resize(100,100); 
  image(amazing,mouseX - 20,mouseY - 20); 
  sound.play();
}
}
