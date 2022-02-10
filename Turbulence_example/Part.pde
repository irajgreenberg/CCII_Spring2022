class Part {

  //reference variables
  PVector pos, spd;
  // sometimes we need to create a copy of original values
  PVector spdInit;
  float theta = 0;
  float freq = 0;
  float amp = 0;
  float wind = 0;

  //primitive variable
  float rad;

  // default cstr
  Part() {
  }

  Part(PVector pos, PVector spd, float rad) {
    this.pos = pos;
    this.spd = spd;
    // we can't simply assign two reference variables to one another,
    // as they'll share the same address
    spdInit = new PVector(spd.x, spd.y, spd.z);
    this.rad = rad;
    freq = random(PI/90, PI/10);
    amp = random(3, 15);
    wind = random(-5, 5);
  }

  void move() {
    // spd.x += sin
    spd.x = spdInit.x + sin(theta)*amp + wind;
    pos.add(spd);
    theta += freq;
  }

  void draw() {
    fill(150);
    pushMatrix();
    translate(pos.x, pos.y);
    ellipse(0, 0, rad*2, rad*2);
    popMatrix();
  }
}