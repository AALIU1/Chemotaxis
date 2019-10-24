bubs [] bub;
int boatx=(int)(Math.random()*600-1400);
int boaty=0;
int fishx=(int)(Math.random()*600-1400);
int fishy=(int)(Math.random()*800+200);
void setup(){
  size(2000,1000);
  bub=new bubs[40];
  for(int i=0;i<bub.length;i++){
    bub[i]= new bubs();
  }
}
void draw(){
  background(0,150,150);
  for(int a=0;a>-1100;a-=5){
     noStroke();
     fill(0,(-a-255)/5,-a/5);
     rect(0,a+1000,2000,50);
  }
  boatx+=4;
  fishx+=2;
  noStroke();
  fill(0,0,0);
  arc(boatx,boaty,400,200,0,PI);
  if(boatx>=2500){
    boatx=(int)(Math.random()*600-1400);
  }
  if(fishx>=2200){
    fishx=(int)(Math.random()*600-1400);
    fishy=(int)(Math.random()*800+200);
  }
  fill(0,0,60);
  triangle(fishx,fishy,fishx-50,fishy-50,fishx-50,fishy+50);
  ellipse(fishx,fishy,80,80);
  for(int i=0;i<bub.length;i++){
    bub[i].move();
    bub[i].show();
  }
}
class bubs{
  int x,y,z,c;
  int speedx=(int)(Math.random()*30+25);
  int colorx = 100;
  bubs(){
    x=(int)(Math.random()*2001);
    y=(int)(Math.random()*1001);
    z=100;
    c=(int)(Math.random()*100+50);
  }
  void move(){
    x+=(int)(Math.random()*10-5);
    y-=(int)(Math.random()*speedx-5);
    colorx+=(int)(Math.random()*4);
    if(y<=-100){
      x=(int)(Math.random()*2001);
      y=(int)(Math.random()*200)+1100;
      speedx=(int)(Math.random()*30+15);
      colorx=100;
    }
  }
  void show(){
    strokeWeight(10);
    stroke(0,z-200,z);
    noFill();
    ellipse(x,y,c,c);
    stroke(colorx,colorx,colorx);
    strokeWeight(c*0.15);
    arc(x+10,y,c/2,c/2,-HALF_PI,HALF_PI);
  }
}
