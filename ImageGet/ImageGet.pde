//Image Topics

//pixels array vs. get function for color

PImage img;
int loc; //index for pixel array
int cellsize =40;

void setup() {
  size(600, 800);
  img = loadImage("stella.png");
  colorMode(RGB);
  background(255);
  noStroke();
}

void draw () {
  // image(img, 0, 0);


  //load pixels array
  for (int x=0; x<img.width; x+=cellsize) {
    for (int y=0; y<img.height; y+=cellsize) {

      //int loc = x+y*width; //two-dimensional image into a one-dimesional pixel array


      //different values to pull from pixels
      //brightness
      float bright = brightness(img.pixels[loc]);
      //color
      //color c =img.pixels[loc];

      color c =img.get(x, y); //this is a quicker and easier way to access color information of an image

      fill(c);
      rect (x, y, cellsize, cellsize); //turn on for image grid
    }
  }
}
