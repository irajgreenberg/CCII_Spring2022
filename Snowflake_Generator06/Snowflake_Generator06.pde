// Version 06
// row of snowflakes
// equally spaced between the sketch window edges

int flakeCount = 30;
int gaps = flakeCount-1 + 2;
float segmentW;
SnowFlake[] flakes;

void setup() {
  size(1024, 768);
  // instantiate the array itself
  flakes = new SnowFlake[flakeCount];
  segmentW = width/(flakeCount + gaps);

  for (int i=0; i<flakeCount; i++) {
    flakes[i] = new SnowFlake(int(random(16, 20)), segmentW/2, segmentW/2*.4, color(random(255), random(255), random(255)));
  }

  noFill();
  strokeWeight(1);
}

void draw() {
  background(255);

  //translate(width/2, height/2);
  //rotate(frameCount*PI/180); // radians(frameCount)

  translate(0, height/2);
  for (int i=0; i<flakeCount; i++) {
    translate(segmentW, 0);
    stroke(flakes[i].col);
    flakes[i].draw();
    translate(segmentW, 0);
  }
}
