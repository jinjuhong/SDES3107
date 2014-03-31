PImage img;
PImage zoom;
color b;

void setup() {
  size (1000,600);
  img = loadImage ("pizza.jpg");
}

void draw() {
  image(img,0,0,width,height);
  zoom = get(mouseX-10, mouseY-10,20,20);
  image(zoom, mouseX+60, mouseY, 80,80);
  
  b = get (mouseX, mouseY);
  fill(b);
 ellipse(mouseX+30, mouseY,50,50);
}
