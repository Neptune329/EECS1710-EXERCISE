color bgColor = color(0,255,0);
float circleSize = 100;

void setup() {
  size(800,600,P2D); // P2D enables 2D GPU acceleration
   background(0);
}

void draw() {
 fill(bgColor,5);
 rect(0,0,width,height);
 
 if(mousePressed);{
   ellipseMode(CENTER);
   rectMode(CENTER);
 fill(0,127,255);
 stroke(255,0,0);
 line(mouseX,mouseY,pmouseX,pmouseY);
rect(mouseX,mouseY,circleSize,circleSize);
 }
 
}
