// snowflake generator
// points
// radius

// algorithm
//1. move the virtual pen to the center
//2. draw the first point
//3. I'm going to copy radially the point

// generative or emergent process
// we let stuff evolve out of a process or system


// global scope
// so we can see them i both setup and draw blocks
PVector pos;
int pts = 0;
float rad = 0;
color col;



void setup() {
  size(800, 600);
  // instantiation statement
  PVector pos = new PVector(0, 0);
  // primitive assignments
  // = is the assignment operator
  // ALWAYS works from right to left
  int pts = 7;
  float rad = 125;
  color col = new color(45);
}

void draw() {
  background(75);
}
