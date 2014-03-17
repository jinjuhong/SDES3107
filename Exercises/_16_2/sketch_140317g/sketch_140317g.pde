size (300,300);


rect(10,10,30,30); 
rect(20,10,30,30);

translate(10,0); 
rect(10,10,30,30);


translate(10,0);
translate(10,0);



pushMatrix(); 
translate(10,0); 
rect(0,0,10,10); 
popMatrix();

pushMatrix(); 
translate(10,0); 
rect(0,0,10,10); 
popMatrix(); 
rect(0,0,10,10);



rect(0, 5, 70, 30);
translate(10, 30); // Shifts 10 pixels right and 30 down rect(0, 5, 70, 30);

// A negative number used as a parameter to translate() // moves the coordinates in the opposite direction rect(0, 5, 70, 30);
translate(10, -10); // Shifts 10 pixels right and up rect(0, 5, 70, 30);

rect(0, 5, 70, 30);
translate(10, 30); // Shifts 10 pixels right and 30 down rect(0, 5, 70, 30);
translate(10, 30); // Shifts everything again for a total rect(0, 5, 70, 30); // 20 pixels right and 60 down


//

translate(33, 0); // Shift 33 pixels right rect(0, 20, 66, 30);
rect(0, 50, 66, 30);


pushMatrix();
translate(33, 0); // Shift 33 pixels right
rect(0, 20, 66, 30);
popMatrix(); // Remove the shift
// This shape is not affected by translate() because
// the transformation is isolated between the pushMatrix() // and popMatrix()
rect(0, 50, 66, 30);


pushMatrix();
translate(20, 0);
rect(0, 10, 70, 20); // Draws at (20, 30) pushMatrix();
translate(30, 0);
rect(0, 30, 70, 20); // Draws at (50, 30) popMatrix();
rect(0, 50, 70, 20); // Draws at (20, 50) popMatrix();
rect(0, 70, 70, 20); // Draws at (0, 70)
