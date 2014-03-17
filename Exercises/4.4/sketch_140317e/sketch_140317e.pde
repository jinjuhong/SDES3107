size(600,600);
//ellipse(50,50,60,60);

background(100,200,300,300);

noStroke();
smooth();
float radius = 1.0;
for (int deg = 0; deg < 360*6; deg += 11) {
float angle = radians(deg);
float x = 80 + (cos(angle) * radius); 
float y = 102 + (sin(angle) * radius); 
ellipse(x, y, 6, 6);
radius += 0.34;
}



//



for (int deg = 0; deg < 360; deg += 12) { 
  float angle = radians(deg);
float x = 100 + (cos(angle) * radius);
float y = 500 + (sin(angle) * radius); 
ellipse(x, y, 6, 6);
}


//


for (int deg = 0; deg < 360*20; deg += 16) {
float angle = radians(deg);
float x = 300 + (cos(angle) * radius); 
float y = 300 + (sin(angle) * radius); 
ellipse(x, y, 6, 6);
radius += 0.34;
}



//


