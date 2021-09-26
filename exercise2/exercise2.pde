PImage donut;
PImage cat;
PImage wing;
int xPos;
int yPos;
int xMove;
int yMove;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800,600, P2D);
  donut = loadImage("donut.jpg");
  cat = loadImage("cat.png");
  wing = loadImage("wing.png");
  cat.resize(180,100);
  wing.resize(150,150);
  donut.resize(800, 600);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  xPos = width/2;
  yPos = height/2;
  xMove = 0;
  yMove = 0;
  x2 = x1 + 40;
  y2 = y1 - 40;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
}

void draw() {
  background(252, 240, 228);
  
  tint(255, 127);
  image(donut, x2, y2);
  noTint();
  image(donut, x1, y1); 
  
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
  
  xPos += xMove;
  yPos += yMove;
  image(wing, xPos, yPos);
  
  if(mouseX>xPos&&mouseY>yPos){
    xMove+=1;
    yMove+=1;
  }else if(mouseX<xPos&&mouseY>yPos){
    xMove-=1;
    yMove+=1;
  }else if(mouseX<xPos&&mouseY<yPos){
    xMove-=1;
    yMove-=1;
    }else if(mouseX>xPos&&mouseY<yPos){
    xMove+=1;
    yMove-=1;
  }
  image(cat,x1,x2);
  
}

  
  
