


PImage img, img2;

PImage alphaImg;


  void setup() {
  size(800, 700);
  
//backgroundimage
  img = loadImage("pizza-boxes.jpg");
  image(img, 0, 0);
  



alphaImg = loadImage("pizza.png");
}
void draw() {
int ix = mouseX - alphaImg.width/2; 
int iy = mouseY - alphaImg.height/2; 
image(alphaImg, ix, iy);
}

