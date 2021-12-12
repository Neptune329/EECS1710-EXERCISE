import processing.sound.*;
boolean gameBegin = false;
PImage bongo;
PImage green;
PImage red;
PImage yellow;
PImage blue;
PImage orange;
PImage purple;

SoundFile one, two, three, four, five ,six;

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

}
void keyPressed() {
   switch(key) {  
    case 'q':
    case 'Q':
    image(green, 400, 300, width, height);
    one.play();
    break;
    case 'w':
    case 'W':
    image(red, 400, 300, width, height);
    two.play();
    break; 
    case 'e':
    case 'E':
    image(yellow, 400, 300, width, height);
    three.play();
    break; 
    case 'r':
    case 'R':
    image(blue, 400, 300, width, height);
    four.play();
    break; 
    case 't':
    case 'T':
    image(orange, 400, 300, width, height);
    five.play();
    break;
    case 'y':
    case 'Y':
    image(purple, 400, 300, width, height);
    six.play();
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
  text("Use 'Q,W,E,R,T,Y' to play",width/2,height/2+50);
  text("Press B to start",width/2,height/2+100);
}
