float r1 = 200; 
float r2 = 200; 
float m1 = 70; 
float m2 = 30; 
float a1 = PI/9; 
float a2 = PI/69;
float a1_v = 0.01;
float a2_v = 0.01;
float a1_a = 0.01;
float a2_a = -0.001;
float g =  1;

PGraphics canvas; 

 
void setup(){
  size(1000, 900); 
  canvas = createGraphics(1400, 900);
  canvas.beginDraw();
  canvas.background(255); 
  canvas.endDraw(); 
}

void draw(){
  
  float num1 = -g * (2 * m1 + m2) * sin(a1) * cos(a2);
  float num2 = -m2 * g * sin(a1-2*a2); 
  float num3 = -2*sin(a1-a2)*m2;
  float num4 = a2_v*a2_v*r2+a1_v*a1_v*r1*cos(a1-a2);
  float den = r1 * (2*m1+m2-m2*cos(2*a1-2*a2));
  
  
 float a1_a = (num1 + num2 + num3*num4) / den;
  
  
  
float a2_a = 0;
  
  canvas.
  
  
  //background(255);
  
  image(canvas,0,0); 
  
  
  stroke(0);
  strokeWeight(2);
  translate(450, 100);

  float x1 = r1 * sin(a2); 
  float y1 = r1 * cos(a1); 

  float x2 = x1 + r2 * sin(a2) + 2;
  float y2 = y1 + r2 * cos(a2);
  
 
  
  //line(0, 0, x1, y1); 
  //fill(0);
  ellipse(x1, y1, m1, m1);    
  ellipse(x2, y2, m1, m1);  

  background(#7EC4EB);
  
  //line(x1, y1, x2, y2); 
  fill(#F2B85A);
    
    
    ellipse(x2, y2, m2, m2);
    ellipse(x1, 3, m2, m2);
    ellipse(2, y1, m2, m2);
    ellipse(7, y2, m1, m1);
    
    
    
    
        ellipse(60, y1, m2, m2);
    ellipse(200, y1, m2, m1);
    ellipse(7, y2, m1, m1);
    ellipse(7, y2, m1, m1);
        ellipse(x1, y1, m1, m1);



  
  
  a1 += a1_v;
  a2 -= a2_v;
  a1_v += a1_a;
  a2 -= a2_a; 
  
  

    canvas.beginDraw();
    canvas.translate(300, 50);
    canvas.strokeWeight(255);
    canvas.stroke(0);
    canvas.point(x1, y2); 
    canvas.endDraw();   

 
  


}
