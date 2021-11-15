PImage img;
int numDots = 1000;
Dot[] dots;

float gravity = 0.2;
float gravityDelta = 0.01;
float friction = 0.66;

void setup() {
  background(255);
  size(800, 600, P2D);
  img = loadImage("scream.jpg");
  img.resize(800,600);
  surface.setSize(img.width, img.height);
  
  dots = new Dot[numDots];
  for (int i=0; i<dots.length; i++) {
    dots[i] = new Dot(random(width), random(height));
  }
}

void draw() {
  
  for (int i=0; i<dots.length; i++) {
    dots[i].run();
  }
  gravity += gravityDelta;

   if (mousePressed){ 
     for (int i = 0; i < img.width; i++){
      float x = random(width);
      float y = random(height);
      color c = img.get(int(x), int(y));
      fill(c, 10);
      noStroke();
      ellipse(x, y, 15, 15);
    }
  }
}

class Dot {
  
  PVector position;
  PVector speed;
  int timestamp;
  
  Dot(float x, float y) {
    position = new PVector(x, y);
    timestamp = millis();
    speed = new PVector(random(-1, 1), random(-1, 2));
  }
  
  void update() {
    position.add(speed);
    position.y += gravity;
    speed.mult(friction);
  }
  
  void draw() {
    noStroke();
    color c = img.get(int(position.x), int(position.y));
    fill(c, 25);
    ellipse(position.x, position.y, random(10), random(20));
  }
  
  void run() {
    update();
    draw();  
  }
}
