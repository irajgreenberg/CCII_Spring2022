
float g = .2;
int partCount = 5000;
float emissionRate = .5;
float currentPartCount = 0;
Part[] parts = new Part[partCount];

void setup() {
  size(800, 800);
  for (int i=0; i<partCount; i++) {
    PVector a = new PVector(random(width), -50);
    PVector b = new PVector(random(-3, 3), .2);
    parts[i] = new Part(a, b);
  }
}

void draw() {
  background(255);
  for (int i=0; i<currentPartCount; i++) {
    parts[i].move();
    parts[i].draw();

    if ( parts[i].pos.y > height) {
      parts[i].pos.y = -20;
      parts[i].spd.y = 0;
    }
  }
  if (currentPartCount < partCount - emissionRate) {
    currentPartCount+=emissionRate;
  };
}
