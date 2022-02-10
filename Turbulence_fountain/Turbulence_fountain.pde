final int PART_COUNT = 4000;
Part[] parts = new Part[PART_COUNT];

float emissionRate = .6;
float tempPartCount;

float g = .1;

void setup() {
  size(900, 800);

  for (int i=0; i<parts.length; i++) {
    PVector p = new PVector(width/2, 200);
    parts[i] = new Part(p, new PVector(random(-.4, .4), random(-2.4, -1.3)), random(.2, 8));
  }
}

// semi-transparent background
void draw() {
  fill(255, 20);
  noStroke();
  rect(-1, -1, width+1, height+1);

  for (int i=0; i<tempPartCount; i++) {
    parts[i].move();
    parts[i].draw();
  }
  if (tempPartCount < PART_COUNT - emissionRate) {
    tempPartCount +=emissionRate;
  }
}
