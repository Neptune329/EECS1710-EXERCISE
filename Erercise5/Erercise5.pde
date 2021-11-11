import ddf.minim.*;
Minim       minim;
AudioPlayer music;
float voice;
void setup(){
  size(800,800);
  minim = new Minim(this);
  music = minim. loadFile("music.mp3", 1024);
  music.loop();
}

void draw(){
  voice = music.mix.level();
  background(0);
  ellipse(width/2,height/2,voice*400,voice*400);
  
}
