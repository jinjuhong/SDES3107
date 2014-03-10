int width = 500;

size(width, width*2);
background(255,204,0);

//got this thang from a website

strokeWeight(25);
line(200,200,100,100);
line(200,400,200,100);

ellipse(100,240,200,200);
ellipse(400,240,200,200);
print("this is some awesome text");
println("this is the second line of some awesome text");
println("even more!!");


int ellipseWidth = 10; 
int ellipseHeight = 30;

strokeWeight(0);
ellipse(10,10, ellipseWidth,ellipseHeight); 
ellipse(40,50, ellipseWidth,ellipseHeight); 
ellipse(30,20, ellipseWidth,ellipseHeight);

stroke(255,0,0);
int drawPosition = 10;
int distanceBetweenLines = 50;


line(drawPosition,0,drawPosition,height);

drawPosition = drawPosition + distanceBetweenLines;
println(drawPosition);
line(drawPosition,0,drawPosition,height);


int position = 10;
line(position,0,position,height);
position = position * 2;
println(position);
line(position,0,position,height);

for (int counter = 0; counter <5; counter += 1)
{
line(position,0,position,height);
position = position * 2;
println(position);
}




if((3 < 5)&&(3 > 2)) {
ellipse(50,50,10,10);}


if(3 < 5) ellipse(50,50,10,10); 
else {rect(50,50,10,10); }

for (int x = 20; x < 80; x += 5) {
line(20,x,80,x+15);}
