import processing.video.*;

int numPixelsWide, numPixelsHigh;
int blockSize = 12;
Movie mov;
color movColors[];

void setup() {
  size(1280,720);
  noStroke();
  mov = new Movie(this, "video.mp4");
  mov.loop();
  numPixelsWide = width / blockSize;
  numPixelsHigh = height / blockSize;
  println(numPixelsWide);
  movColors = new color[numPixelsWide * numPixelsHigh];
}


void draw() {
  background(0);
  if (mov.available() == true) {
    mov.read();
    mov.loadPixels();
    int count = 0;
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }
  for (int j = 0; j < numPixelsHigh; j++) {
    for (int i = 0; i < numPixelsWide; i++) {
      noStroke();
      fill(movColors[j*numPixelsWide + i]);
      ellipse(i*blockSize, j*blockSize, blockSize-1, blockSize-1);
    }
  }

}
