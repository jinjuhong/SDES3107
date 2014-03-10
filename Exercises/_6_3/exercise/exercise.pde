size(200,200);

/*
    noFill();
    smooth(); 
    beginShape(); 
    vertex(30,20); 
    vertex(85,20); 
    vertex(30,75); 
    vertex(85,75); 
    endShape();
    
    smooth();
noFill(); 
beginShape(); 
curveVertex(20,80); 
curveVertex(20,40); 
curveVertex(30,30); 
curveVertex(40,80); 
curveVertex(80,80); 
curveVertex(90,10);
endShape();
*/


// Connects each grouping of three vertices as a triangle 7-09 
beginShape(TRIANGLES);
vertex(75, 30);
vertex(10, 20);
            vertex(75, 50);
            vertex(20, 60);
            vertex(90, 70);
            vertex(35, 85);
            endShape();

// Starting with the third vertex, connects each 7-10 // subsequent vertex to the previous two 
beginShape(TRIANGLE_STRIP);
vertex(75, 30);
            vertex(10, 20);
            vertex(75, 50);
            vertex(20, 60);
            vertex(90, 70);
            vertex(35, 85);
            endShape();
            

//triangle fan
            beginShape(TRIANGLE_FAN); 
            vertex(10, 20);
vertex(75, 30);
vertex(75, 50);
            vertex(90, 70);
            vertex(10, 20);
            endShape();
            
//quads
            beginShape(QUADS);
            vertex(30, 25);
vertex(85, 30);
vertex(85, 50);
            vertex(30, 45);
            vertex(30, 60);
            vertex(85, 65);
            vertex(85, 85);
            vertex(30, 80);
            endShape();

//cont
vertex(50, 50);
            vertex(85, 30);
            vertex(30, 45);
            vertex(85, 50);
            vertex(30, 60);
            vertex(85, 65);
            vertex(30, 80);
            vertex(85, 85);
            endShape();
