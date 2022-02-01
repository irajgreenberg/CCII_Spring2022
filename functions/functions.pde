// functions


void setup() {
  doesSomething();
  doesSomething(3);
  doesSomething(3);
  println(doesSomething(3, 5));
  int sum = doesSomething(3, 5);
  
  // you can use functions that return values in place of the values
  doesSomething(doesSomething(3), doesSomething(3));
  
  
}

// return type is not part of the function/method signature


// example of function overloading

// signature is: doesSomething and no params
void doesSomething() {
}



// signature is: doesSomething expecting 1 int arg
void doesSomething(int x) {
}



// signature is: doesSomething expecting 1 int arg
int doesSomething(int x) {
  return x;
}


// signature is:
int doesSomething(int x, int y) {
  return x+y;
}
