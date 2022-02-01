// Version 07
// table of snowflakes
// equally spaced within the sketch window

float flakeCols = 36;
float flakeRows = 36;
float flakeW, flakeH;
SnowFlake[][] flakes2D;

void setup() {
  size(1024, 768);
  // instantiate the array itself
  flakes2D = new SnowFlake[int(flakeCols)][int(flakeRows)];
  flakeW = width/flakeCols;
  flakeH = height/flakeRows;

  // ternary opertor replaces simple if/else
  // returns what's after ? if true or what's after : if false
  float flakeR = flakeW < flakeH ? flakeW : flakeH;

  for (int i=0; i<flakeCols; i++) {
    for (int j=0; j<flakeRows; j++) {
      float x =  flakeW/2+flakeW*i;
      float y =  flakeH/2+flakeH*j;
      flakes2D[i][j] = new SnowFlake(int(random(16, 20)), new PVector(x, y),
        flakeR/2, flakeR/2*.4, color(random(255), random(255), random(255)));
    }
  }
  noFill();
  strokeWeight(1);
}

void draw() {
  background(255);
  for (int i=0; i<flakes2D.length; i++) {
    for (int j=0; j<flakes2D[i].length; j++) {
      stroke(flakes2D[i][j].col);
      flakes2D[i][j].draw();
    }
  }
}
