PImage bg, img, img2, img3,img4,imgg,imggg;
PVector position, target;
boolean isRunning = false;
float xpos;
float ypos;
float speedX = 1;

void setup(){
  
  size(1280, 720, P2D);
  
  bg = loadImage("background.png");
  img = loadImage("plane.png");
  img2= loadImage("sleep.png");
  img3= loadImage("walk.png");
  img4= loadImage("heart.png");
  img4.resize(260,150);
  
  xpos = 640;
  ypos = 550;
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));  
  
  imgg = img;
  imggg = img3;
  
 ellipseMode(CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
}


void draw() {
 
  background(bg);
  
  xpos += speedX;
  if (xpos > 1000) { 
    
    speedX *= -1;
  } 
  else if (ypos < 500) { 
    
    speedX *= -1;
  }
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 100;
  
  if (isRunning) {
    imgg = img;
    imggg = img3;
    position = position.lerp(target, 0.08);
    
    if (position.dist(target) < 5) {
      
      target = new PVector(random(width), random(height));
    }
    xpos += speedX;
  if (xpos > 1000) { 
    
    speedX *= -1;
  } 
  else if (xpos < 500) { 
    
    speedX *= -1;
  }
    if ((position.x <= 795 && position.x >= 485)) {
      
      imgg = img4;
    }
    
    else if ((position.x >= 795 && position.x <= 485)) {
      
      imgg = img; 
    }
       if ((position.x <= 795 && position.x >= 485)) {
      
      imggg = img2;
    }
    
    else if ((position.x >= 795 && position.x <= 485)) {
      
     imggg = img3;
    }
  }
  
  image(imgg, position.x, position.y);
  image(imggg, xpos, ypos);
}
