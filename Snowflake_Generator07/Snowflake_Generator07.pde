// Version 06
// row of snowflakes
// equally spaced between the sketch window edges

float flakeCount = 36;
float flakeW;
SnowFlake[] flakes;

void setup() {
  size(1024, 768);
  // instantiate the array itself
  flakes = new SnowFlake[int(flakeCount)];
  flakeW = width/flakeCount;
  println(flakeW);

  for (int i=0; i<flakeCount; i++) {
    float x =  flakeW/2+flakeW*i;
    flakes[i] = new SnowFlake(int(random(16, 20)), new PVector(x, height/2, 0),
      flakeW/2, flakeW/2*.4, color(random(255), random(255), random(255)));
  }

  noFill();
  strokeWeight(1);
}

void draw() {
  background(255);
  for (int i=0; i<flakeCount; i++) {
    stroke(flakes[i].col);
    flakes[i].draw();
  }
}
