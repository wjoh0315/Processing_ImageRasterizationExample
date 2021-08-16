PImage img;
int interval = 8;
int empty = 0;

void setup() {
  img = loadImage("sample.jpg");
  surface.setSize(img.width, img.height);
  img.loadPixels();
  
  background(255);
  fill(0);
  noLoop();
  noStroke();
}

void draw() {
  for (int y=0; y < img.height; y += interval)
  {
    for (int x=0; x < img.width; x += interval)
    {
      int currentPixel = img.pixels[img.width * y + x];
      int size = round(map(
        brightness(currentPixel),
        255, 0, 0, interval - empty
      ));
      fill(color(
        hue(currentPixel),
        saturation(currentPixel),
        brightness(currentPixel)
      ));
      //rect(x, y, size, size);
      circle(x, y, size);
    }
  }
}
