
// arrays of primitives versus objects
float x = 0;

float[] xs;
xs = new float[100];


class A{
}

A a = new A();


A[] as = new A[100];


void setup(){
  
  for (int i=0; i<xs.length; i++){
    xs[i] = random(20);
  }
  
  // we need to use new a 2nd time
  for (int i=0; i<as.length; i++){
    as[i] = new A();
  }
}


void draw(){
}
