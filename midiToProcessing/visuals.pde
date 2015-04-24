// C C# D D# ...
color scales[][] = 
{
  // Isaac Newton 1704  
  {
    #fa0b0c, #000000, #f88010, #000000, #f5f43c, #149033, #000000, #149033, #000000, #7f087c, #000000, #d71386
  }
  , 
  // Louis Bertrand Castel 1734
  {
    #1c0d82, #1b9081, #149033, #709226, #f5f43c, #f5d23b, #f88010, #fa0b0c, #a00c09, #d71386, #4b0e7d, #7f087c
  }
  , 
  // D. D. Jameson 1844
  {
    #fa0b0c, #f44712, #f88010, #f5d23b, #f5f43c, #149033, #1b9081, #1c0d82, #4b0e7d, #7f087c, #a61586, #d71386
  }
  , 
  {
    #bce039, #149033, #1b9081, #1c0d82, #7f087c, #d71386, #6f0d45, #a00c09, #fa0b0c, #f88010, #edf087, #f5f43c
  }
};

public void drawSphere(int pitch, int vel) {

  
  fill(getColorFromPitch(pitch), 200);
  float s = map(vel, 0, 127, 0, 50);
  float x = map(pitch, 0, 127, 0, 100);
  ellipse(globalX+x, x+globalY, s, s);
}

public color getColorFromPitch(int pitch) {
  color c = color(0, 0, 0);

  int note = pitch%12;

  c = scales[3][note];

  return c;
}
