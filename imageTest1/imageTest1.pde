PImage img;
int interval = 10;
int empty = 0;

void setup() {
  img = loadImage("sample.jpg");
  surface.setSize(img.width, img.height);
  img.loadPixels();
  
  background(255);
  noLoop();
  noStroke();
}

void draw() {
  for (int y=0; y < img.height; y += interval)
  {
    for (int x=0; x < img.width; x += interval)
    {
      int size = interval - empty;
      fill(img.pixels[img.width * y + x]);
      //rect(x, y, interval - empty, interval - empty);
      circle(x, y, size);
    }
  }
}
