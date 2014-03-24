float gray = 0;
int counter = 0;

void setup() {
  size(100,100);
}

void draw() {
  background (gray);
  
  //mousePressed is different from mousePressed()
  println(counter);
}

void keyPressed () {
  // do something
  counter++;
  gray += 20;
}
