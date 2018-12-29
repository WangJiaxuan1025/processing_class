import processing.sound.*;
 
SoundFile soundFile;  //  音频文件
AudioIn in;  //   AudioIn let's you grab the audio input from your soundcard
Amplitude amp;//  一个音频数据分析器
float lucency = 0;//  透明度
float ampvalue = 0; // Amplitude.analyze()的值
String path = "";// 文件路径（文件保存在项目目录中的“data”文件夹中）

float posX;
float posY;
float xSpeed;
float ySpeed;
float red;
float green;
float blue;
 
void setup()
{
  //initialize
  size(550,675);//设置画布大小
  pixelDensity(displayDensity());
  
  path = "faye.wav";
  soundFile = new SoundFile(this,path);
  in = new AudioIn(this,0);
  amp = new Amplitude(this);
  
  in.start();  //   Starts the input stream
  amp.input(in);  //  Defines the audio input source of the amplitude analyzer
  
  
  //小球初始位置任意
  posX=random(40, width-40);
  posY=random(40, height-40);
  //小球初始运动方向
  xSpeed=random(-30, 30);
  ySpeed=random(-30, 30);
  
  //小球初始颜色
  red=random(0, 255);
  green=random(0, 255);
  blue=random(0, 255);
  noStroke();
  
}
 
int lastm = 0;//保存毫秒millis()/60获取的商，用于减缓获取音频数据的时间
void draw()
{
  background(#2A294B);//画布大小和底部颜色
  noStroke();//设置图形无线条
  
   noStroke();
  fill(red,green,blue);
  ellipse(posX,posY,10,10);
   
      //小球碰到画布左右壁时，变色，X轴上运动方向反转
  if (posX>=width-20 || posX<=20) {//20为小球半径
    xSpeed=-xSpeed;
    red=random(0, 255);
    green=random(0, 255);
    blue=random(0, 255);
  }
  //小球碰到画布上下壁时，变色，Y轴上运动方向反转
  if (posY>=height-20 || posY<=20) {
    ySpeed=-ySpeed;
    red=random(0, 255);
    green=random(0, 255);
    blue=random(0, 255);
  }
  //运动方向增量
  posY=posY+ySpeed;
  posX=posX+xSpeed;

  

 noStroke();//没有描边的大大大圆
 ellipse(275,245,350,350);
  stroke(#60AD9E);
  strokeWeight(10);
  noFill();
  triangle(275,150,105,635,445,635);
  noStroke();//没有描边的三角形
  stroke(4);
  line(270,140,95,640);
  line(285,150,455,640);
  line(95,645,455,645);
  
  noStroke();
  fill(#FFFFFF);
  ellipse(30,60,10,10);
  noStroke();
  fill(#FFFFFF);
  ellipse(55,65,05,05);
  noStroke();
  fill(#FFFFFF);
  ellipse(40,40,05,05);
   noStroke();
  fill(#FFFFFF);
  ellipse(20,10,3,3);
  noStroke();
  fill(#FFFFFF);
  ellipse(40,10,13,13);
  noStroke();
  fill(#FFFFFF);
  ellipse(50,30,5,5);
  noStroke();
  fill(#FFFFFF);
  ellipse(60,35,7,7);
   noStroke();
  fill(#FFFFFF);
  ellipse(20,55,4,4);
  noStroke();
  fill(#FFFFFF);
  ellipse(25,70,5,5);
   noStroke();
  fill(#FFFFFF);
  ellipse(55,75,5,5);
  noStroke();
  fill(#FFFFFF);
  ellipse(90,85,5,5);
   noStroke();
  fill(#FFFFFF);
  ellipse(85,75,7,7);
  noStroke();
  fill(#FFFFFF);
  ellipse(105,65,4,4);
  noStroke();
  fill(#FFFFFF);
  ellipse(85,15,5,5);
  noStroke();
  fill(#FFFFFF);
  ellipse(80,5,7,7);
  
  //happy xmas!
  strokeWeight(27);
  stroke(#FAF7F8);
  line(50,300,45,350); 
  strokeWeight(27);
  stroke(#FAF7F8);
  line(50,330,180,285);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(85,290,80,340);
    strokeWeight(27);
  stroke(#FAF7F8);
   line(120,275,95,340);
    strokeWeight(27);
  stroke(#FAF7F8);
   line(120,275,135,330);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(120,275,135,330);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(355,200,480,155);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(400,155,370,240);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(445,135,415,220);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(395,150,420,170);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(440,130,465,155);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(470,135,490,165);
   strokeWeight(27);
  stroke(#FAF7F8);
   line(510,120,490,195);
  
  strokeWeight(10);
  stroke(#F0482E);
  line(50,300,45,350); 
strokeWeight(10);
  stroke(#F0482E);
   line(50,330,180,285); 
     strokeWeight(10);
  stroke(#F0482E);
  line(85,290,80,340);
  strokeWeight(10);
  stroke(#F0482E);
  line(120,275,95,340);
  strokeWeight(10);
  stroke(#F0482E);
  line(120,275,135,330);
  strokeWeight(10);
  stroke(#F0482E);
  line(355,200,480,155);  
  strokeWeight(10);
  stroke(#F0482E);
  line(400,155,370,240); 
  strokeWeight(10);
  stroke(#F0482E);
  line(445,135,415,220); 
  strokeWeight(10);
  stroke(#F0482E);
  line(395,150,420,170);
  strokeWeight(10);
  stroke(#F0482E);
  line(440,130,465,155);
  strokeWeight(10);
  stroke(#F0482E);
  line(470,135,490,165);
  strokeWeight(10);
  stroke(#F0482E);
  line(510,120,490,195);
  
  
  
  stroke(#60AD9E);
  strokeWeight(5);
  noFill();
  triangle(275,185,125,625,425,625);
    noStroke();//没有描边的三角形
  stroke(#60AD9E);
  strokeWeight(10);
  noFill();
  triangle(275,220,145,615,405,615);
      noStroke();//没有描边的三角形
  stroke(#60AD9E);
  strokeWeight(5);
  noFill();
  triangle(275,260,165,605,385,605);
    stroke(#60AD9E);
  strokeWeight(10);
  noFill();
  triangle(275,300,185,595,365,595);

  
  
    
    
  
  noStroke();
  fill(#FCA1B3);
  ellipse(mouseX,mouseY,25,25);
  noStroke();
  fill(#FCA1B3);
  ellipse(pmouseX,pmouseY,20,20);
  stroke(2);
  fill(#55F084);
  line(pmouseX,pmouseY,mouseX,mouseY);
  
  noStroke();
  //60毫秒获取一次amp分析音频的value
  int m = millis();//获取程序运行时间，以毫秒为单位
  if(m/60>lastm)//  "millis()/60 " > 上次获取的商
  {
    ampvalue = amp.analyze();//analyze()   Queries a value from the analyzer and returns a float between 0. and 1.
    lastm = m/60;
  }
  println("millis:"+m);
  println(ampvalue); 
  
  //绘制外圈紫色圆
  drawOutsideCircle(ampvalue);
  
  
  
  drawInsideCircle(ampvalue);

  

}
//绘制外圈紫色闪动圆函数
void drawOutsideCircle(float ampvalue)
{
  int wid = 15;//圆形直径
  lucency = ampvalue*10000;//根据amp分析的值value修改透明度（灰度值）
  fill(255,0,255,lucency);
  ellipse(405,265,wid,wid);
  //noFill();
  fill(#DB73DB,lucency);
  ellipse(165,315,wid,wid);
  //noFill();
  fill(#DB73DB,lucency);
  ellipse(185,345,wid,wid);
  //noFill();
  fill(#3C9DE5,lucency);
  ellipse(385,245,wid,wid);
  //noFill();
   noStroke();
  fill(#CB2B51,lucency);
  ellipse(245,400,30,30);
    
    noStroke();
  fill(#FCA1B3,lucency);
  ellipse(235,240,20,20);
  noStroke();
  fill(#FCA1B3,lucency);
  ellipse(225,140,10,10);  
  noStroke();
  fill(#CB2B51,lucency);
  ellipse(170,130,24,24);
    noStroke();
  fill(#CB2B51,lucency);
  ellipse(275,100,20,20);
     noStroke();
  fill(#CB2B51,lucency);
  ellipse(200,180,10,10);
      noStroke();
  fill(#F0F289,lucency);
  ellipse(275,135,40,40);
      noStroke();
  fill(#3C9DE5,lucency);
  ellipse(295,335,40,40);
       noStroke();
  fill(#88BFE8,lucency);
  ellipse(415,325,25,25);
        noStroke();
  fill(#3C9DE5,lucency);
  ellipse(405,265,15,15);
         noStroke();
 fill(255,lucency);
  ellipse(200,350,20,20);
  noFill();
  fill(255,lucency);
  ellipse(200,350,20,20);
  noFill();
  fill(#2FF2F7,lucency);
  ellipse(220,530,20,20);
  noFill();
  fill(#EBFC36,lucency);
  ellipse(400,600,40,40);
  noFill();
  fill(#58FF12,lucency);
  ellipse(410,530,35,35);
  noFill();
  fill(#ED37C3,lucency);
  ellipse(130,600,50,50);
  noFill();
 
  
}


//绘制内圈红色变直径圆函数
void drawInsideCircle(float ampvalue)
{
  float wid = 20;//圆形直径
  wid = wid*ampvalue*100 + wid;
  if(wid>160)//防止直径越界
  wid = 160;
  
  //根据直径长度绘制中心红圆
  stroke(5);
  fill(#F0F289);
  ellipse(275,135, wid,wid);
  noFill();
  
  //ampvalue值圈形边界
  strokeWeight(4);
  stroke(#FCFCFC);
  ellipse(600,350, 200,200);
  ellipse(600,350, 300,300);
  noStroke();
 
  
  strokeWeight(4);
  stroke(#FCFCFC);
  noFill();
  ellipse(-50,100, 200,200);
  ellipse(-50,100, 300,300);
  
  
}
//点击鼠标播放音乐
void mousePressed()
{
  soundFile.play();
}
