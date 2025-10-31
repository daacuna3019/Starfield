fireworks[] cool;
void setup(){
  cool = new fireworks[150];
  size(600, 600);
  background(0);
  for(int i = 0; i < cool.length - 25; i++)
    cool[i] = new fireworks();
   for(int i = 0; i < cool.length - 125; i++)
    cool[i + 125] = new oddball();
}

void draw(){
  background(0);
  noStroke();
  for(int i = 0; i < cool.length; i++){
    cool[i].show();
    cool[i].move();
  }
}

class fireworks{
  color myC;
  double myX, myY, myXSpeed, myYSpeed, angle, speedMult;
  fireworks(){
    myC = color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255));
    myX = 300;
    myY = 300;
    angle = radians((float)(Math.random() * 360));
    speedMult = Math.random() *  5 - 3;
    myXSpeed = Math.cos(angle) * speedMult;
    myYSpeed = Math.sin(angle) * speedMult;
  }
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 10, 10);
  }
  void move(){
    myX += myXSpeed;
    myY += myYSpeed;
  }
}
class oddball extends fireworks{
  void show(){
    fill(color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255), 127));
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
