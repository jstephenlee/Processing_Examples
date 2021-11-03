//simple vector addition

PVector v1, v2;

void setup() {
  size (400, 400);

  v1 = new PVector(width/2,height/2);
  v2 = new PVector(2, -2); 
}

void draw() {
  background (255);
  //add vector 2 to vector 1
  v1.add(v2);
  ellipse(v1.x, v1.y, 24, 24);
}
