int sizer =100;

void setup () {
  size (800, 1000);
}


void draw () {
  background (255);
  for (int i=0; i<width; i+=sizer) {
    for (int j=0; j<height; j+=sizer) {
      star(i+sizer/2, j+sizer/2, random(sizer/4), random(sizer/4, sizer/2), int (random(30)));
    }
  }
}



void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
