SnowFlake s;

void setup() {
  size(1024, 768);
 // SnowFlake(int ptCount, PVector pos, PVector spd, float rotSpd, float radius, float innerRadius, color col)
  s = new SnowFlake(6, new PVector(0, 0), new PVector(random(-.5, .5), random(.5, 1.7)), random(-PI/45, PI/45), 12, -6, color(0x55ff22));
}

void draw() {
  background(255);
  translate(width/2, 0);
  s.draw();
  s.move();
}
