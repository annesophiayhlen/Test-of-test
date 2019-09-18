int bw = 255; // background color
int wh = 255; // White color to random color
int reSi = 50; //rect size 
int maxX = 325;  //max. range on x-axis the ract can go 
int minX = 275;  //min. range on x-axis the ract can go 
int maxY = 700;  //max. range on y-axis the ract can go 
int minY = 100;  //min. range on y-axis the ract can go  
int bla = 0; // Black to random color
float rectX = 100;  // start value on x-axis  for the rect 
float rectY = 300;  // start value on y-axis  for the rect 
float speedX = 1;  // speed on the x-axis 
float speedY = 1;  //hastighed på y-axis 

void setup(){
  size(800,800);
}
void draw(){
  background(bw);
  rectMode(CENTER);
  rect(rectX,rectY,reSi,reSi);
  
//rectangel moving
  rectX = rectX + speedX;
    if(rectX>maxY){
      speedX = -1;
  }    
  else if (rectX<minY){
  speedX = 1;
  }
  rectY = rectY + speedY;
    if(rectY<minX){
      speedY = 1;
      fill(random (bla, wh), random (bla, wh), random (bla, wh));
  }     
  else if (rectY>maxX){
      speedY = -1;
      fill(random (bla, wh), random (bla, wh), random (bla, wh));
 }
} 
