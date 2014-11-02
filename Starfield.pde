Particle [] part = new Particle[500];
void setup()
{
  size(600,600);  //your code here
  for (int i=0; i<part.length; i++)
  {
    part[i]= new NormalParticle();
  }
  
  part[0] = new OddballParticle();
  part[1] = new JumboParticle();

}

void draw()
{
   background(0);
  
  for(int i=0; i<part.length; i++)
  {
    part[i].move(); 
    part[i].show();
  }
 }

interface Particle 
{
public void show();
public void move();

}

class NormalParticle implements Particle 
{double dTheta, dSpeed, dX, dY;
  
  NormalParticle() 
  {
    dTheta=(Math.random()*2*Math.PI)+1;
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
 dTheta= dTheta +.01;
  dX= dX+(Math.cos(dTheta)*dSpeed);
  dY= dY+(Math.sin(dTheta)*dSpeed);
}

}

class OddballParticle implements Particle 
{
  double dTheta, dSpeed, dX, dY;
 
  OddballParticle() 
  {
    dTheta=(Math.random()*2*Math.PI);
    dSpeed=15*(Math.random()*5); 
    dX=300;
    dY=300; 
    
  }
void show()
{  
fill(((float)Math.random()*200)+50,0,0);
text(":)",(float)dX-0,(float)dY);

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


class JumboParticle extends NormalParticle
{

double dTheta, dSpeed, dX, dY;
  
  JumboParticle() 
  {
    dTheta=(Math.random()*2*Math.PI);
    dSpeed=(Math.random()*10); 
    dX=140;
    dY=300;
   }
public void show()
{
  fill((int)(Math.random()*255));
textSize(70);
text("JUMBOLICOUS",(float)dX-40,(float)dY);
  
}
public void move()
{
}

}
