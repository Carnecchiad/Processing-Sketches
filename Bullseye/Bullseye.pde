float x = 0; 
float y = 0;
int p = 200;
int t = 800;
void setup(){
size(1000,1000);

for(int i = 0; i < 140; i++){
  x+=2.5;
    if(i%2 == 1){
     fill(255,0,0); 
    }
    else{
    fill(0,0,0);
    }
    ellipse(p,height/2,350-x,350-x);  
  }

for(int x = 0; x < 140; x++){
    y+=2.5;
    if(y%2 == 1){
     fill(0,0,0); 
    }
    else{
    fill(255,0,0);
    }
    ellipse(t,height/2,350-y,350-y);  
  }


  
  

} 
void draw(){
for(int i = 0; i < 200; i++){
  p++;
t--;
}

}
