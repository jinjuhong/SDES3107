
void setup() {
               size(200, 200);
               smooth();
               strokeWeight(4);
}
            void draw() {
               background(204);
               // If the ‘A’ key is pressed draw a line
               if ((keyPressed == true) && (key == '1')) {
                  line(50, 25, 50, 75);
               } else { 
                 // Otherwise, draw an ellipse
                  line(50, 50, 50, 50);
               }
               
               
               //circle on the right
               
                if ((keyPressed == true) && (key == '2')) {
                  line(120,25,120,75);
               } else { 
                 // Otherwise, draw an ellipse
                  line(120, 50, 50, 50);
               }
}
