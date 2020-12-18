class Bullet extends Floater
{
  public Bullet(Spaceship ship)
  {
     myCenterX = ship.getX();
     myCenterY = ship.getY();
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = ship.getDir();
  }
  public void show()
  {
     ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move()
  {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
