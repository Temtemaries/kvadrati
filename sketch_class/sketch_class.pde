class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  
  
  void right(float _s) {
    this.x+=_s;
  }
}
class Color extends Kvadrat {
    Color(float _x, float _y, float _s) {
      super(_x,_y,_s);
    }
      void draw() {
        fill(random(255),random(255),random(255));
    rect(this.x,this.y,this.s,this.s);
  }
    }
Color[] k_array;

void setup()
{
  size(600,600);
  k_array = new Color[10];
  for(int i=0; i<10; i++){
    k_array[i] = new Color(random(width), random(height), 100.0);
  }
}

void draw()
{
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}