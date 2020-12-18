class Asteroid extends Floater
{
  int angV;
  public Asteroid(double xV, double yV, double x, double y)
  {
      angV = 1;
      corners = 6;
      //xCorners = new int[corners];
      //yCorners = new int[corners];
      xCorners = new int[]{-8, 0, 8, 8, 0,-8};
      yCorners = new int[]{ 4, 12, 4,-4,-12,-4} ;
      myColor = color(255,255,255);
      myCenterX = x;
      myCenterY = y;
      myXspeed = xV;
      myYspeed = yV;
      myPointDirection = 5;
      
      //copy list
      //for(int i=0;i<corners;i++)
      //{
      //  xCorners[i] = roidsX[0][i];
      //  yCorners[i] = roidsY[0][i];
      //}
  }
  public void move()
  {
    super.move();
    super.turn(angV);
  }
}

                                                                                                                                                                                                                                                                                                                                                                                                                              
