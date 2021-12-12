import processing.sound.*;
boolean gameBegin = false;
PImage bongo;
PImage green;
PImage red;
PImage yellow;
PImage blue;
PImage orange;
PImage purple;
PImage drum;
PImage left;
PImage right;

SoundFile one, two, three, four, five ,six;
SoundFile done, dtwo, dthree, dfour, dfive ,dsix;

void setup(){
  size(800, 600);
  imageMode(CENTER);
   bongo = loadImage("bongo.png");
   green = loadImage("green.png");
   red = loadImage("red.png");
   yellow = loadImage("yellow.png");
   blue = loadImage("blue.png");
   orange = loadImage("orange.png");
   purple = loadImage("purple.png");
   drum = loadImage("drum.png");
   left = loadImage("left.png");
   right = loadImage("right.png");
   drum.resize(600,400);
   left.resize(600,400);
   right.resize(600,400);
   
  one = new SoundFile(this, "one.mp3");
  one.cue(0);
  two = new SoundFile(this, "two.mp3");
  two.cue(0);
  three = new SoundFile(this, "three.mp3");
  three.cue(0);
  four = new SoundFile(this, "four.mp3");
  four.cue(0);
  five = new SoundFile(this, "five.mp3");
  five.cue(0);
  six = new SoundFile(this, "six.mp3");
  six.cue(0);
  done = new SoundFile(this, "A.mp3");
  done.cue(0);
  dtwo = new SoundFile(this, "B.mp3");
  dtwo.cue(0);
  dthree = new SoundFile(this, "C.mp3");
  dthree.cue(0);
  dfour = new SoundFile(this, "D.mp3");
  dfour.cue(0);
  dfive = new SoundFile(this, "E.mp3");
  dfive.cue(0);
  dsix = new SoundFile(this, "F.mp3");
  dsix.cue(0);
}

void draw(){
   
   if(gameBegin == false)
  {
    showBegin();
  }
   if(keyPressed && key == 'b' && gameBegin ==false)
  {
    gameBegin = true;
    image(bongo, 400, 300, width, height);
  } 
 if(keyPressed && key == '1')
  {
    image(bongo, 400, 300, width, height);
  }
  if(keyPressed && key == '2')
  {
    image(drum, 400, 300, width, height);
  }
}
void keyPressed() {
   switch(key) {  
    case 'q':
    case 'Q':
    image(green, 400, 300, width, height);
    done.play();
    break;
    case 'w':
    case 'W':
    image(red, 400, 300, width, height);
    dtwo.play();
    break; 
    case 'e':
    case 'E':
    image(yellow, 400, 300, width, height);
    dthree.play();
    break; 
    case 'r':
    case 'R':
    image(blue, 400, 300, width, height);
    dfour.play();
    break; 
    case 't':
    case 'T':
    image(orange, 400, 300, width, height);
    dfive.play();
    break;
    case 'y':
    case 'Y':
    image(purple, 400, 300, width, height);
    dsix.play();
    break;
    case 'a':
    case 'A':
    image(left, 400, 300, width, height);
    one.play();
    break;
    case 's':
    case 'S':
    image(left, 400, 300, width, height);
    two.play();
    break; 
    case 'd':
    case 'D':
    image(left, 400, 300, width, height);
    three.play();
    break; 
    case 'f':
    case 'F':
    image(right, 400, 300, width, height);
    four.play();
    break; 
    case 'g':
    case 'G':
    image(right, 400, 300, width, height);
    five.play();
    break;
    case 'h':
    case 'H':
    image(right, 400, 300, width, height);
    six.play();
    break;
   }
}
void keyReleased() {
   switch(key) {  
    case 'q':
    case 'Q':
    image(bongo, 400, 300, width, height);
    break;
    case 'w':
    case 'W':
    image(bongo, 400, 300, width, height);
    break; 
    case 'e':
    case 'E':
    image(bongo, 400, 300, width, height);
    break; 
    case 'r':
    case 'R':
    image(bongo, 400, 300, width, height);
    break; 
    case 't':
    case 'T':
    image(bongo, 400, 300, width, height);
    break;
    case 'y':
    case 'Y':
    image(bongo, 400, 300, width, height);
    break;
    case 'a':
    case 'A':
    image(drum, 400, 300, width, height);
    break;
    case 's':
    case 'S':
    image(drum, 400, 300, width, height);
    break; 
    case 'd':
    case 'D':
    image(drum, 400, 300, width, height);
    break; 
    case 'f':
    case 'F':
    image(drum, 400, 300, width, height);
    break; 
    case 'g':
    case 'G':
    image(drum, 400, 300, width, height);
    break;
    case 'h':
    case 'H':
    image(drum, 400, 300, width, height);
    break;
   }
}
void showBegin()
{
  background(0);  
  textAlign(CENTER); 
  fill(255);
  textSize(35);
  text("Welcome to bongo cat",width/2,height/2-50);
  textSize(20);
  text("Use 'Q,W,E,R,T,Y' to play piano",width/2,height/2+50);
  text("Use 'A,S,D,F,G,H' to play drum",width/2,height/2+30);
  text("Use '1,2' to select instrument",width/2,height/2+10);
  text("Press B to start",width/2,height/2+100);
}
