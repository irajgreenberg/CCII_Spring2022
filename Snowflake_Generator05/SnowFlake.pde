class SnowFlake {

  // properties or fields are the variables declared in the class
  int ptCount = 0;
  float radius = 0.0;
  float innerRadius = 0.0;
  color col = 0;

  float theta = 0.0; // to do our trig calcuations

  // array for storing the point positions
  PVector[] pts;

  // constructors the functions that run when the class is instantiated, using new
  // default constructor
  SnowFlake() {
  }

  // parameters in he head of the constructor are just variables declared between the parentheses
  // I pass arguments to the parameters when I call the method or constructor
  SnowFlake(int ptCount, float radius, float innerRadius, color col) {
    if (ptCount%2 !=0) {
      this.ptCount = ptCount+1;
    } else {
      this.ptCount = ptCount;
    }

    this.radius = radius;
    this.innerRadius = innerRadius;
    this.col = col;
    // instantiate array object
    pts = new PVector[this.ptCount];

    create();
  }

  // methods

  // create
  void create() {
    float thetaIncrementor = TWO_PI/this.ptCount;
    float x = 0;
    float y = 0;
    for (int i = 0; i< this.ptCount; i++) {
      if (i%2 == 0) {
        x = cos(theta)* radius;
        y = sin(theta)* radius;
      } else {
        x = cos(theta)* innerRadius;
        y = sin(theta)* innerRadius;
      }


      // instantiating PVector objects
      pts[i] = new PVector(x, y);
      theta += thetaIncrementor;
    }
  }

  // draw
  void draw() {
    beginShape();
    for (int i = 0; i< ptCount; i++) {
      vertex(pts[i].x, pts[i].y);
    }
    endShape(CLOSE);
  }


  // getter/setter methods
}
