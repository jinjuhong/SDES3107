int i = 0;

//once
void setup() {
  size(500,500);
  smooth();
  //nostroke
  
}

void draw() {
  background(222);
  fill(800,800,800,100);
  
  //bigroundmiddle
  ellipse(250,250,mouseX,mouseY);
  
  
    fill(100,200,300,400);
  ellipse(width-mouseX,mouseY,33,33);
  
  ellipse(width-mouseY,mouseX,33,33);
  
  ellipse(mouseX*2,mouseY,10,10);
  
   ellipse(mouseX,mouseY*2,10,10);
   
    ellipse(mouseY,mouseX,10,10);
    
    ellipse(mouseY*2,mouseX,10,10);
    
    ellipse(mouseY*3,mouseX,5,5);
  
}
