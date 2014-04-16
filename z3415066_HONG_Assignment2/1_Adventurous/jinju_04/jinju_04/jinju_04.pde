// P_4_0_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * draw a grid of streched copies of an image 
 * 
 * MOUSE
 * position x           : tile count horizontally
 * position y           : tile count vertically
 * 
 * KEYS
 * s                    : save png
 */

import java.util.Calendar;

//////////there's a surprise///////
PImage img, img2, img3, img4;
PFont font;
//making a variable to have text different places
int textX;
int textY;

boolean inCorner;
//7x5 grid BackgroundBoxes for different pictures placement
int[][] backgroundBoxes = new int[6][8];


void setup(){
  size(650, 450);
  img = loadImage("kitten1.jpg");
  img2 = loadImage("cat2.jpg");
  img3 = loadImage("cat3.jpg");
  img4 = loadImage ("cat4.jpg");
  font = loadFont("ComicSansMS-Bold-100.vlw");
  textFont(font, 100);
  textX = 150;
  textY = 450/2;
  inCorner = false;
  
  ///////////goes through every box and puts either 0 or 1 value////////
  for (int i=0; i < 6; i++) {
    for (int j=0; j<8; j++) {
      int z = int (random (0,3));
        backgroundBoxes[i][j] = z;
    }
  }
  
  
}

void draw(){
  
  ///////////random changing "cats"///////////////
  int m = millis()%1500; //1000ms = 1second
   println (m);
  if (m > 1450) {
    println ("***********************");
    //shuffle background
      //goes through every box and puts either 0 or 1 value
    for (int i=0; i < 6; i++) {
      for (int j=0; j<8; j++) {
        int z = int (random (0,3));
        int cage = int (random (0,100));
        if (cage < 5) {
          backgroundBoxes[i][j] = cage;
        } else {
          backgroundBoxes[i][j] = z;
        }
      }
    }
  }
  
  float tileCountX = mouseX/100+1;
  float tileCountY = mouseY/100+1;
  float stepX = width/tileCountX;
  float stepY = height/tileCountY;
  //
   int i =0;
  for (float gridY = 0; gridY < height; gridY += stepY){
    
    //
    int j= 0;
    
    for (float gridX = 0; gridX < width; gridX += stepX){
      //image(img, gridX, gridY, stepX, stepY);
      //println(i+" "+j);
     ///////////PLACE THREE DIFFERENT CATS RANDOMLY HERE!!! ////////
      if (backgroundBoxes [i][j] == 0) {
        image(img, gridX, gridY, stepX, stepY);
      } else if (backgroundBoxes [i][j] == 1) {
        image(img2, gridX, gridY, stepX, stepY); 
      } else if (backgroundBoxes [i][j] ==2) {
        image(img3, gridX, gridY, stepX, stepY);
      } else {
        image(img4, gridX, gridY, stepX, stepY);

      }
      
      //
      j++;
    }
    //
    i++;
  }
  
  
        //all corners says meow
  if ((mouseX > 600 && mouseY > 400) || 
        (mouseX < 50 && mouseY > 400) ||
        (mouseX <50 && mouseY <50) ||
        (mouseX > 600 && mouseY < 50)
        ){
   //im in the corner
  fill(random(0,255),200,random(0,255));
  
  //if the mouse is not in the corner then change position of the text
  // ! = if you're not
  if (!inCorner) {
     //calculating random text placement
    textX = (textX + int(random(0,150)))%300;
    textY = (textY + int(random(0,100)))%300;
  }
  
  
 //random text location PLACEMENT
  text(" such\nmeow", textX, textY);
  inCorner = true;
  
   
  } else {
    //i'm not in the corner
    inCorner = false;
  }
}

void keyReleased(){
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

