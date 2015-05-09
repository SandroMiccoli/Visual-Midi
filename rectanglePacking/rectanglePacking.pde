

RectPacking rp;
  
void setup() {
  background(222);
  size(200, 200);
  
  rp = new RectPacking();
  rp.printRowColumns();
  
  frameRate(1);
}

void draw() {
  rp.addRect();
  rp.displayRects();
  
  
}
