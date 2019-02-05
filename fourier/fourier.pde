float angle = 0.0;
ArrayList<Float> points = new ArrayList<Float>(2000);
void setup()
{
  size(800,500);
}
void draw()
{
  background(0);
  translate(200,height/2);
  noFill();
  stroke(255);
  strokeWeight(1);
  float radius;
  float x = 0.0; 
  float y = 0.0;
  float prevx,prevy;
  for(int i = 0; i < 3; i++)
  {
    prevx = x;
    prevy = y;
    int n = (i*2) +1;
    radius = 65 * (4 / (n * PI));
    x += radius * cos(n*angle); 
    y += radius * sin(n*angle);
    stroke(150);
    strokeWeight(1);
    circle(prevx,prevy,radius * 2); 
    strokeWeight(2);
    line(prevx,prevy,x,y);    
    strokeWeight(1);
  }
  line(x,y,200,y);
  stroke(255);
  points.add(0,y);
  noFill();
  translate(200,0);
  strokeWeight(1);
  beginShape();
  for(int i = 0; i < points.size(); i++)
  vertex(i/3.5, points.get(i));
  endShape();
  if(points.size() > 1999)
  points.remove(1999);
  angle -= 0.01; 
}
