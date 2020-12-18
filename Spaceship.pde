class Spaceship extends Floater  
{   
    //your code here
    public Spaceship()
    {
      corners = 4;
      xCorners = new int[]{-2, -8, 16, -8};
      yCorners = new int[]{0, -8, 0, 8};
      myColor = color(255,255,255);
      myCenterX = 150;
      myCenterY = 150;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 5;
    }
    public void setXSpeed(double speed)
    {
      myXspeed = speed;
    }
  public double getSpeed()
  {
    return sqrt(((float)myXspeed*(float)myXspeed)+((float)myYspeed*(float)myYspeed));
  }
  public double getDir()
  {
    return myPointDirection;
  }
    public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
}
