
// what are the properties of a snowflke

int ptCount = 0;
float radius = 0.0;
float theta = 0.0; // to do our trig calcuations
color col = 0;

// array for storing the point positions
PVector[] pts;

void setup() {
  size(1024, 768);
  ptCount = 3;
  // new is the instantiation operator
  pts = new PVector[ptCount];
  // store snowflake parts here

  radius = 250;

  float thetaIncrementor = TWO_PI/3;

  // declare some local conveninece vars
  float x = cos(theta)* radius;
  float y = sin(theta)* radius;
  pts[0] = new PVector(x, y);

  theta += thetaIncrementor; // 120*PI/180 or radians(120)
  x = cos(theta)* radius;
  y = sin(theta)* radius;
  pts[1] = new PVector(x, y);

  theta += thetaIncrementor;
  x = cos(theta)* radius;
  y = sin(theta)* radius;
  pts[2] = new PVector(x, y);
}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotate(frameCount*PI/180); // radians(frameCount)

  beginShape();
  for(int i = 0; i< ptCount; i++){
    vertex(pts[i].x, pts[i].y);
  }
  // don't need the extra lines since we're using a for loop
  //vertex(pts[1].x, pts[1].y);
  //vertex(pts[2].x, pts[2].y);
  endShape(CLOSE);
}
