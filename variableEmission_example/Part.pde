class Part {
  PVector pos;
  PVector spd;
  
  Part(PVector pos, PVector spd){
    this.pos = pos;
    this.spd = spd;
  }
  void move(){
    spd.y +=g;
    pos.add(spd);
  }
  
  void draw(){
    pushMatrix();
    translate(pos.x, pos.y);
    ellipse(0, 0, 2, 2);
    popMatrix();
  }
}
