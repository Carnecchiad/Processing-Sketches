float x = 0; 
float y = 0;
int p = 200;
int t = 800;
int o = 4;
int l = 2;
int h = 2;
void setup(){
size(1000,1000);



  
  

} 
void draw(){
background(255);
  for(int i = 0; i < 350; i+=o){
  if(i%2 == 1){
   fill(255,0,0); 
  }
   else{
   noFill();
   }
   
   noFill();
   ellipse(p,height/2,350-i,350-i);  
   ellipse(width/2,p,350-i,350-i);  
    ellipse(p,p,350-i,350-i);
    ellipse(t,t,350-i,350-i);
  }
  
  
  for(int x = 0; x < 350; x+=o){
   if(x%2 == 1){
   fill(255,0,0); 
  }
   else{
   noFill();
   }
   
   noFill();
    ellipse(t,height/2,350-x,350-x);  
    ellipse(width/2,t,350-x,350-x);  
    ellipse(t,p,350-x,350-x);
    ellipse(p,t,350-x,350-x);
 }

    p+=l;
    t-=h;
    if(p > 800){
     h = -h; 
     l = -l;  
  }
  if(p < 200){
     h = -h; 
     l = -l;  
  }
   if(key == 'a'){
  o = 4; 
 }
 if(key == 's'){
   o++;
 }
 if(key == 'w'){
   o--;
 }
 if(key == 'd'){
    o = 350;
 }
}
void keyPressed(){

}