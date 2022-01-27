// Version 05

// declaring a variable of type SnowFlake
// once we create a class, we have a new datatype

int flakeCount = 5000;
SnowFlake[] flakes;

void setup() {
  size(1024, 768);
  // instantiate the array itself
  flakes = new SnowFlake[flakeCount];
  
  for(int i=0; i<flakeCount; i++){
    flakes[i] = new SnowFlake(int(random(16, 20)), random(i, 200), random(-i, 125), color(random(255), random(255), random(255)));
  }
  
  noFill();
  strokeWeight(.1);
 
}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotate(frameCount*PI/180); // radians(frameCount)
  
  for(int i=0; i<flakeCount; i++){
    stroke(flakes[i].col);
    flakes[i].draw();
  }
 

}
