// M_6_1_03.pde
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
 * more nodes and more springs
 *
 * KEYS
 * r             : reset positions
 * s             : save png
 * p             : save pdf
 */

import generativedesign.*;
import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

// an array for the nodes
Node[] nodes = new Node[500];
// an array for the springs
Spring[] springs = new Spring[0];

// dragged node
Node selectedNode = null;

float nodeDiameter = 10;


void setup() {
  size(displayWidth, displayHeight);
  background(255);
  smooth();
  noStroke();

  initNodesAndSprings();
}



void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  background(88);
  //  fill(255, 20);
  //  rect(0, 0, width, height);

  // let all nodes repel each other
  for (int i = 0 ; i < nodes.length; i++) {
    nodes[i].attract(nodes);
  } 
  // apply spring forces
  for (int i = 0 ; i < springs.length; i++) {
    springs[i].update();
  } 
  // apply velocity vector and update position
  for (int i = 0 ; i < nodes.length; i++) {
    nodes[i].update();
  } 

  if (selectedNode != null) {
    selectedNode.x = mouseX;
    selectedNode.y = mouseY;
  }

  // draw nodes
  /*
  stroke(255);
  strokeWeight(8);
  for (int i = 0 ; i < springs.length; i++) {
    //line(springs[i].fromNode.x, springs[i].fromNode.y, springs[i].toNode.x, springs[i].toNode.y);
  }
  
  */
  
  // draw nodes
  noStroke();
  for (int i = 0 ; i < nodes.length; i++) {
    // choose a random shape and draw it
    
    float j = random(0,4);
    int k = int(j);
    
    //println(k);
    
    // if k is 0
    if(k==0){
      ///// i want to draw a circle/////
      fill(255);
      ellipse(nodes[i].x, nodes[i].y, nodeDiameter, nodeDiameter);
      fill(255,233,59);
      ellipse(nodes[i].x, nodes[i].y, nodeDiameter-1, nodeDiameter-1);
    } else if (k==1){
      /////blue squares!!/////
      fill (100,200,300);
      rect(nodes[i].x, nodes[i].y, nodeDiameter, nodeDiameter);
      fill(100,200,300);
      rect(nodes[i].x, nodes[i].y, nodeDiameter-1, nodeDiameter-1);
    }
    

  }

  if (savePDF) {
    savePDF = false;
    println("saving to pdf – finishing");
    endRecord();
  }
}


void initNodesAndSprings() {
  // init nodes
  float rad = nodeDiameter/5;
  for (int i = 0; i < nodes.length; i++) {
    nodes[i] = new Node(width/10+random(10,40), height/2+random(10, 40));
    nodes[i].setBoundary(rad, rad, width-rad, height-rad);
    nodes[i].setRadius(150);
    nodes[i].setStrength(-60);
  } 

  // set springs randomly
  springs = new Spring[0];

  for (int j = 0 ; j < nodes.length-1; j++) {
    int rCount = floor(random(2, 2));
    for (int i = 0; i < rCount; i++) {
      int r = floor(random(j+1, nodes.length));
      Spring newSpring = new Spring(nodes[j], nodes[r]);
      newSpring.setLength(20);
      newSpring.setStiffness(1);
      springs = (Spring[]) append(springs, newSpring);
    }
  }

}


void mousePressed() {
  // Ignore anything greater than this distance
  float maxDist = 1000;
  for (int i = 20; i < nodes.length; i++) {
    Node checkNode = nodes[i];
    float d = dist(mouseX, mouseY, checkNode.x, checkNode.y);
    if (d < maxDist) {
      selectedNode = checkNode;
      maxDist = d;
    }
  }
}

void mouseReleased() {
  if (selectedNode != null) {
    selectedNode = null;
  }
}


void keyPressed() {
  if(key=='s' || key=='S') saveFrame(timestamp()+"_##.png"); 

  if(key=='p' || key=='P') {
    savePDF = true; 
    println("saving to pdf - starting (this may take some time)");
  }

  if(key=='r' || key=='R') {
    background(255);
    initNodesAndSprings();
  }
}


String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}














