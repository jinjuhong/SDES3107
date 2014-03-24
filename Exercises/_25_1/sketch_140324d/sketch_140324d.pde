


PImage img, img2;

PImage alphaImg;


  void setup() {
  size(800, 700);
  
//backgroundimage
  img = loadImage("pizza-boxes.jpg");
  image(img, 0, 0);
  
      img2 = loadImage("pizza.png");

  
}



void draw() {
  if ((keyPressed ==true) && (key == 'p')) {
    image(img,0,0, img.width/2, img.height/2);
    image(img2, mouseX-(img.width/4), mouseY-img2.height/4), img2.width/2, img2.height/2);
  }
}

