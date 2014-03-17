size(600, 100); 
float v = 0.0; 
float inc = 0.1; 
noStroke(); 
fill(0); 
noiseSeed(0);
for (int i = 0; i < width; i = i+4) {
float n = noise(v) * 70.0;
rect(i, 10 + n, 3, 20);
fill(100,100,200,300);
v = v + inc; }
