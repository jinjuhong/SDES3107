void setup() {
  size(500, 500);
  background(250,200,0,10);
  smooth();
  noLoop();
  stroke(255);
  noFill();
  rectMode(CENTER);
}
void draw() {
  weirdSquare(100, 300, 300, 200);
}

void weirdSquare(int size, int number, int x, int y) { 
  for (int counter = number; 
counter > 0; counter-=5) {
      rect(x, y, size, size);
    size-=20;
  }
  
}


