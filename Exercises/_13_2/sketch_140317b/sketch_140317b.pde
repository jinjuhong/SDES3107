size(480,180);
background (100,200,300,400);


PFont myFont;
myFont =loadFont("HanziPenSC-W3-35.vlw");
textFont(myFont);
text("Jake the Trouble Child",75,45);


myFont =loadFont("Calibri-15.vlw");
textFont(myFont);

text("This is the story of a child. Who knew nothing of what to do. ",75,70);

text("His name was Jake, and he was a very troubled kid. ",75,90);

text("Every afternoon he'd ride his bike to a park, grab a can ",75,110);

text("wrapped around in brown paper, and start spraying",75,130);

text("onto the playground",75,150);


PFont font;
font = loadFont("HelveticaCY-Bold-35.vlw");
textFont(font);
fill(0);
char c = '.';
float cw = textWidth(c);
text(c,22,40);
rect(22,42,cw,5);
String s = "YO";
float sw = textWidth(s);
text(s,22,76);
rect(22,78,sw,5);
