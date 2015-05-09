public class Rectangle {

  private PVector pos;
  private float w;
  private float h;

  Rectangle(){}

  Rectangle(PVector _p, float _w, float _h) {
    this.pos = new PVector(_p.x, _p.y);
    this.w = _w;
    this.h = _h;
  }

  public void display() {
    stroke(12);
    fill(255);
    rect(this.pos.x, this.pos.y, this.w, this.h);
  }
  
  public float getX(){
    return this.pos.x; 
  }
  public float getY(){
    return this.pos.y; 
  }
  public PVector getPos(){
    return this.pos;
  }
  
}
