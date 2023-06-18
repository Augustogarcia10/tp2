PImage photo;
void setup(){
 size(800,400); 
  photo = loadImage("efecto.jpeg");
}  



void efecto(int x){
int y=200;
float d=560;

float g=0;
float a=0.098;
float dec = 50;

for(int c=1; c<=38; c++){
  
  g=g+(a+0.0092);
for(int i=1; i<=32; i++){
fill(128,0,209);
arc(x, y, d, d, g, g+a);
fill(227,232,0);
arc(x, y, d, d, g+a, g+(a*2));
g=g+a*2;
}
  d=d-dec;
  dec=dec -1.8;
//  println(d);
}
fill(128,0,209);
circle(x,y,11); 
}




void draw(){
  background(100);
  efecto(600);
  fill(100);
  rect(0,0,400,400);
  image(photo, 0, 0,400,400);
}  
