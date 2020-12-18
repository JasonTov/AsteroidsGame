//your variable declarations here
public int score = 0;
public Spaceship Bob = new Spaceship();
public Star[] galaxy = new Star[200];
public ArrayList<Asteroid> storm = new ArrayList<Asteroid>();
public ArrayList<Bullet> barrage = new ArrayList<Bullet>();
public int barrageMaxSize = 20;
public int stormMaxSize = 2+score;

public boolean collision(Floater a, Floater b, float d)
{
    float x1 = a.getX();
    float y1 = a.getY();
    float x2 = b.getX();
    float y2 = b.getY();
    
    return(dist(x1,y1,x2,y2)<d);
}

public void setup() 
{
  size(300,300);
  background(0);
  for(int i=0;i < galaxy.length ;i++)
  {
    galaxy[i] = new Star();
  }
}

public void draw() 
{
  stormMaxSize = 2+score;
  background(0);  
  
  ////GALAXY
  for(int i=0;i < galaxy.length ;i++)
  {
    galaxy[i].show();
    galaxy[i].drift((float)(Math.random())/5);
  }
  
  ////STORM
  for(int i=0;i<storm.size();i++)
  {
    storm.get(i).show();
    storm.get(i).move();

    //collsion check
    if(collision(storm.get(i), Bob, 20))
    {
      storm.remove(i);
      if(score>0)
      {
        score--;
      }
      
    }
  }
  
  ////BARRAGE
  for(int i=0;i<barrage.size();i++)
  {
    barrage.get(i).move();
    barrage.get(i).show();
    
    float x = barrage.get(i).getX();
    float y = barrage.get(i).getY();
    
    for(int n=0;n<storm.size();n++)
    {
      if(x<0||x>width+10||y<0||y>height+10)
      {
        if(barrage.size()>0)
        {
          barrage.remove(i);
        }
      }
      if(barrage.size()>0 && storm.size()>0)
      {
        if(collision(barrage.get(i), storm.get(n), 8))
        {
          barrage.remove(i);
          storm.remove(n);
          score++;
        }
      }
    } 
  }  
  
  ////BOB
  Bob.move();
  Bob.show();
  
  //add roid
  if(storm.size()<stormMaxSize)
  {
    double xV,yV,x,y;
    xV = Math.random()*3;
    yV = Math.random()*3;
    x = Math.random()*width;
    y = 0;
    storm.add(new Asteroid(xV,yV,x,y));
  }
  
  ////////////////////////////////////////////////
}

public void keyTyped()
{

  if(key == 'w'&&Bob.getSpeed()<5)
  {
    Bob.accelerate(0.1);
  }
  if(key =='a')
  {
    Bob.turn(-20);
  }
  if(key =='d')
  {
    Bob.turn(20);
  }
  if(key == 'k')
  {
    if(Bob.getX()<20||Bob.getX()>width-20||Bob.getY()<20||Bob.getY()>height-20)
    {}else
    {
      if(barrage.size()<barrageMaxSize)
      {
        Bullet k = new Bullet(Bob);
        barrage.add(k);
        k.accelerate(6);
      }    
    }
  }
  
}
