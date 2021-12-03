ArrayList <Particle> bonk = new ArrayList <Particle>();
int sNum=500;
void setup(){
  size(900,900);
  for(int i =0; i< sNum; i++){
    bonk.add(new Particle());
  }
  bonk.add((int)(Math.random()*500+1),new BingParticle());
  bonk.add((int)(Math.random()*500+1),new BingParticle());
  bonk.add((int)(Math.random()*500+1),new BingParticle());
}
void draw(){
  background(0);
  for(Particle s: bonk){
    s.move();
    s.show();
  }
  
}
class Particle
{
  int size, col;
  double myX, myY, myAngle, mySpeed;

  Particle()
  {
    myX=width/2;
    myY=height/2;

    myAngle=(int)(Math.random()*30*Math.PI);
    mySpeed =(int)(Math.random()*10);
    size=10;
    col=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() {
    //myX+=(int)(Math.random()*11-5);
    //myY+=(int)(Math.random()*11-5);

    myX+=Math.cos(myAngle)*(int)(Math.random()*5)*mySpeed/2;
    myY+=Math.sin(myAngle)*(int)(Math.random()*5)*mySpeed/2;
  }
  void show() {
    fill(col);
    ellipse((float)myX, (float)myY, (float)size, (float)size);
  }
}
class BingParticle extends Particle {
  BingParticle() {
    size= 50;
    mySpeed=3;
    col=color(255, 255, 255);
  }
}
