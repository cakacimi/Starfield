//your code here
/*interface arraything
{
 public void move();
 public void show();
}
class Particle implements arraything
{
  public void move()
  {}
  public void show()
{}
}

class Oddball implements arraything
{
public void move()
{}
}
*/
Particle[] normal;
Oddball[] debt;
void setup()
{
  size(600,600);  //your code here
  debt= new Oddball [1];
  for(int i=0; i<debt.length; i++)
  {
    debt[i]=new Oddball();
  }
 normal= new Particle[500];
 for(int i=0; i<normal.length; i++)
 {
   normal[i]=new Particle();
 }

}
void draw()
{
   background(0);
  for(int i=0; i<normal.length; i++)
  { normal[i].show();
    normal[i].move();
  }
  for(int i=0; i<debt.length; i++)
  {
    debt[i].show(); 
    debt[i].move();
  }
 }

class Particle 
{double dTheta, dSpeed, dX, dY;
  Particle() 
  {
    dTheta=(Math.random()*2*Math.PI);
    dSpeed=(Math.random()*10); 
    dX=300;
    dY=300;
     
  }
void show()
{  
fill(0,((float)Math.random()*200)+50,0);
textSize(50);
text("$",(float)dX-40,(float)dY);
}

void move()
{
  dTheta=dTheta+.01;
  dX= dX+(Math.cos(dTheta)*dSpeed);
  dY= dY+(Math.sin(dTheta)*dSpeed);
}

}

class Oddball
{
  double dTheta, dSpeed, dX, dY;
  int siz;
  Oddball() 
  {
    dTheta=(Math.random()*2*Math.PI);
    dSpeed=15*(Math.random()*5); 
    dX=300;
    dY=300; 
    siz=-490;
  }
void show()
{  
fill(((float)Math.random()*200)+50,0,0);
int big= siz++;
textSize(big);
if(siz>150)
siz=-490;
text("DEBT",(float)dX-0,(float)dY);

}

void move()
{
  
  dX= dX+(Math.cos(dTheta)*dSpeed);
  dY= dY+(Math.sin(dTheta)*dSpeed);
 
 if(dY>100 && dY<249 )
{dY=(Math.random()*200)+100;}

else if(dY<249 && dY<450 )
{dY=(Math.random()*200)+100;}

else
{dY=250;}

 if(dX>100 && dX<199 )
{dX=(Math.random()*200)+100;}

else if(dX<199 && dY<400 )
{dX=(Math.random()*200)+100;}

else
dX=200;
}

}
