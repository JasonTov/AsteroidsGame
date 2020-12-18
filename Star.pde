class Star //note that this class does NOT extend Floater
{
  //your code here
  float x,y,size;
  color hue;
  public Star()
  {
    x = (float)(Math.random()*width);
    y = (float)(Math.random()*height);
    size = (float)(Math.random());
    int base = (int)(Math.random()*100+100);
    hue = color(base,base,base);
  }
  public void show()
  {
    fill(hue);
    stroke(hue);
    ellipse(x,y,size,size);
  }
  public void drift(float speed)
  {
    x+=speed;
    if(x>width)
    {
      x=0;
    }
  }
}
