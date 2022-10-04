Dice dylan;
  void setup(){
    noLoop();
    size(500, 500);
    dylan=new Dice(0, 0);
   
  }
 
 
  void draw(){
   background(0);
   
   
  for(int v=0; v<500; v+=100){
    for(int u=0; u<500; u+=100){
    Dice diego = new Dice(u, v);
    diego.roll();
    diego.show();
   
  }
  }
  }

 
 void mousePressed(){
   redraw();
 }






  class Dice{
    //member variables
    int x1, y1, side;
   
   //constructor AKA fancy initializer
    Dice(int x, int y){
      side=1;
      x1=x;
      y1=y;

    }
   
   
   //member functions
    void roll(){
      side= (int)(Math.random()*7);
     
    }
   
    void show(){
     
      int r=(int)(Math.random()*240+10);
      int g=(int)(Math.random()*240+10);
      int b=(int)(Math.random()*240+10);
     
     
           fill(r, g, b);
      rect(x1, y1, 100, 100, 30);
     
      fill(255, 255, 255);
     if(side==1){
       
     ellipse(x1+50, y1+50, 15, 15);
     }
     else if(side==2){
       
        ellipse(x1+33, y1+33, 15, 15);
        ellipse(x1+66, y1+66, 15, 15);
       
     }
      else if(side==3){
       
       ellipse(x1+25, y1+25, 15, 15);
       ellipse(x1+50, y1+50, 15, 15);
       ellipse(x1+75, y1+75, 15, 15);
       
       
     }
       else if(side==4){
         
           ellipse(x1+33, y1+33, 15, 15);
           ellipse(x1+66, y1+33, 15, 15);
           ellipse(x1+33, y1+66, 15, 15);
           ellipse(x1+66, y1+66, 15, 15);
       
     }
       else if(side==5){
         
         ellipse(x1+33, y1+33, 15, 15);
         ellipse(x1+66, y1+33, 15, 15);
         ellipse(x1+50, y1+50, 15, 15);
         ellipse(x1+33, y1+66, 15, 15);
         ellipse(x1+66, y1+66, 15, 15);
       
     }
      else{
       
        ellipse(x1+33, y1+25, 15, 15);
        ellipse(x1+33, y1+50, 15, 15);
        ellipse(x1+33, y1+75, 15, 15);
        ellipse(x1+66, y1+25, 15, 15);
        ellipse(x1+66, y1+50, 15, 15);
        ellipse(x1+66, y1+75, 15, 15);
       
      }
     
     
    }
         
     
         
         
     
   
  }// end  class
 
 
