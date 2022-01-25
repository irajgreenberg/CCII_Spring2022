class SnowFlake {

  // properties or fields are the variables declared in the class
  int ptCount = 0;
  float radius = 0.0;
  color col = 0;

  float theta = 0.0; // to do our trig calcuations

  // array for storing the point positions
  PVector[] pts;

  // constructors the functions that run when the class is instantiated, using new

  // parameters in he head of the constructor are just variables declared between the parentheses
  // I pass arguments to the parameters when I call the method or constructor
  SnowFlake(int ptCount, float radius, color col) {
    this.ptCount = ptCount;
    this.radius = radius;
    this.col = col;
  }

  // methods

  // create
  void create() {
    float thetaIncrementor = TWO_PI/ptCount;
    float x = 0;
    float y = 0;
    for (int i = 0; i< ptCount; i++) {
      x = cos(theta)* radius;
      y = sin(theta)* radius;
      pts[i] = new PVector(x, y);
      theta += thetaIncrementor;
    }
  }

  // draw
  void draw(){
  }


  // getter/setter methods
}
