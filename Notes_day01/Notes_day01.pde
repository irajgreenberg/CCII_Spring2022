// scope of variable depends on where it's declared

// signature = name of the function/method and the param list
// parameter list is defined by order and type

// global scope
float y = 0.0;

void setup() {
  float x= 0.0;
  println("x = " + x);
  println("y = " + y);
  doSomething();
}


void draw() {
  doSomething();
}


// example of function overloading
// means same name but different parameter list
// differet signatures
void doSomething(float p1){
  println("doing something awesome!!");
  doSomething2();
}

void doSomething(int p1){
  println("doing something awesome!!");
  doSomething2();
}

void doSomething2(){
  println("doing something awesome again!!");
}
