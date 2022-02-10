final int PART_COUNT = 200;
Part[] parts = new Part[PART_COUNT];

void setup(){
  size(900, 800);
  
 for(int i=0; i<parts.length; i++){
   PVector p = new PVector(width/2, 100);
   parts[i] = new Part(p, new PVector(random(-3, 3), random(2, 5)), 3);
 }
}

// semi-transparent background
void draw(){
  fill(255, 80);
  noStroke();
  rect(-1, -1, width+1, height+1);
  
  for(int i=0; i<parts.length; i++){
    parts[i].move();
    parts[i].draw();
  }
  
}
