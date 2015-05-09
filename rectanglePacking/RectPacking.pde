import java.util.Hashtable;
import java.util.Set;
import java.util.Map;

public class RectPacking {

  ArrayList<Rectangle> rects = new ArrayList<Rectangle>();
  Hashtable<PVector, Boolean> rowColumns = new Hashtable<PVector, Boolean>();
  ArrayList<Rectangle> cells = new ArrayList<Rectangle>();

  RectPacking() {
    this.addRC(new PVector(0, 0), true);
  }

  void printRowColumns() {
    for (PVector p : rowColumns.keySet ()) {
      println("Pos: "+p.x+","+p.y+" is "+ rowColumns.get(p));
    }
  }

  void addRC(PVector p, boolean b) {
    rowColumns.put(p, b);
  }

  public void fillScreen() {
    for (int i=0; i<10; i++) {
    }
  }

  public void addRect() {
    float w = random(10, 50);
    float h = random(10, 50);
    Rectangle r = new Rectangle();
    for (PVector p : rowColumns.keySet ()) {
      if (pointAvailable(p) && p.x+w<width && p.y+h<height) {

        PVector rectP = new PVector(p.x, p.y);        
        // Rects are still overlapping 
        r = new Rectangle(rectP, w, h);
        
        rects.add(r);
        addRC(p, false);
        println("Rect added!");
        break;
      }
    }
    addRC(new PVector(r.getX()+w, r.getY()), true);
    addRC(new PVector(r.getX(), r.getY()+h), true);
    addRC(new PVector(r.getX()+w, r.getY()+h), true);
  }

  
  public boolean pointAvailable(PVector p){
     return rowColumns.get(p);
  }

  public void displayRects() {
    for (Rectangle r : rects) {
      r.display();
    }
  }
}
