SnowFlake s;
float g = .02;
float spdY = .1;

void setup(){
  size(1024, 768);
  //SnowFlake(int ptCount, PVector pos, float radius, float innerRadius, color col)
  s = new SnowFlake(6, new PVector(random(width), 0), 12, -6, color(0x55ff22));
}



void draw(){
  background(255);
  s.draw();
  spdY += g;
  
  s.pos.y += spdY;
  s.pos.y += 2.1;
  // move
  
  
  if (s.pos.y >= height){
    s.pos.y = height;
    spdY *= 0;
  }
}
