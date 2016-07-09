import ddf.minim.*;
Minim m = new Minim(this);
AudioPlayer a;
AudioPlayer b;
void setup(){
  a = m.loadFile("destruction.wav"    );
  b = m.loadFile("blip.wav");
  
  
}
void draw(){
 if(key == ' '){
  a.play();
  
 } 
  if(mousePressed){
   b.play(); 
  }
}
