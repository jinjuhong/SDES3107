size (500,500);
background (200,300,400,500);

int x = 50;
int y = 50;

colorMode(HSB,100);

//draw 100 ellipses to screen

for (int i = 0; i <100; i++) {
  x = round(random(0, width));
  y = round(random(0, height));
  //hue,saturation,brightness
  fill(random(0,100),100,100);
  ellipse(x,y,31,35);
  
}


//random lines

smooth();
            strokeWeight(10);
            stroke(0, 100);
            line(0, random(500), 500, random(500));
            line(0, random(500), 500, random(500));
            line(0, random(500), 500, random(500));
            line(0, random(500), 500, random(500));
            line(0, random(500), 500, random(500));


//random lines more

smooth();
strokeWeight(20);
stroke(0, 230);
float r = random(5, 45);
stroke(r * 5.6, 230);
line(0, r, 100, random(55, 95));
r = random(5, 45);
stroke(r * 5.6, 230);
line(0, r, 100, random(55, 95));
r = random(5, 45);
stroke(r * 5.6, 230);
line(0, r, 100, random(55, 95));


float xnoise = 0.0;
float ynoise = 0.0;
float inc = 0.04;

    float gray = noise(xnoise, ynoise) * 255;
    stroke(gray);
    point(x, y);
    xnoise = xnoise + inc;
  
  xnoise = 0;
  ynoise = ynoise + inc;


// textures

    
