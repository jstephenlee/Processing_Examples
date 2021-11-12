

float theta;
float sizer=50;

//use video export library to export video
import com.hamoid.*;
VideoExport videoExport;

void setup() {
  size(540, 540);
  pixelDensity(2); //doubles the pixels to 1080x1080
  colorMode(HSB, 360, 100, 100); //change color mode to HSB
  background (0, 0, 0);
  videoExport = new VideoExport(this);
  videoExport.startMovie();
}


void draw () {
  noStroke();
  fill (map(sin(theta*2), -1, 1, 0, 360), 100, 100, 100); //map the color to create rainbow effect
  ellipse (mouseX, mouseY, sizer+sin(theta)*sizer/2, sizer+sin(theta)*sizer/2); //draw circles at the mouse position
  theta+=.1; //increment theta
  //saveFrame("frame-####.jpg"); //save frame
  videoExport.saveFrame();
}
