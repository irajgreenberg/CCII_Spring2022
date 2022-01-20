// Version 03
//  convert all to for loops and increase point count

// what are the properties of a snowflke

int ptCount = 0;
float radius = 0.0;
float theta = 0.0; // to do our trig calcuations
color col = 0;

// array for storing the point positions
PVector[] pts;

void setup() {
  size(1024, 768);
  ptCount = 7;
  // new is the instantiation operator
  pts = new PVector[ptCount];
  // store snowflake parts here

  radius = 250;

  float thetaIncrementor = TWO_PI/ptCount;
  float x = 0;
  float y = 0;
  for (int i = 0; i< ptCount; i++) {
    x = cos(theta)* radius;
    y = sin(theta)* radius;
    pts[i] = new PVector(x, y);
    theta += thetaIncrementor;
  }
}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotate(frameCount*PI/180); // radians(frameCount)

  beginShape();
  for (int i = 0; i< ptCount; i++) {
    vertex(pts[i].x, pts[i].y);
  }
  endShape(CLOSE);
}
