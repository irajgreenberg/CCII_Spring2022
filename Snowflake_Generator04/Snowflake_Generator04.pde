// Version 04

// declaring a variable of type SnowFlake
// once we create a class, we have a new datatype
SnowFlake s;

void setup() {
  size(1024, 768);
  s = new SnowFlake(16, 150, 75, color(225, 100, 45));
}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotate(frameCount*PI/180); // radians(frameCount)
  s.draw();

}
