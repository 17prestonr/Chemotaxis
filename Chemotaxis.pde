 Bacteria[] bob; 
 void setup()   
 {     
   size(300,300);
   bob = new Bacteria[36];
   for(int i = 0; i < bob.length; i ++){
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
   }
 }  
 class Bacteria    
 {     
   int x,y;
   int varX, varY; 
   Bacteria(){
     x = 150;
     y = 150; 
    // x = x+ (int)(Math.random()*100)-1;
    // y = y + (int)(Math.random()*100)-1;
   }
   void show(){
     fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
     ellipse(x,y,5,5);
   }
   void move(){

     if(mouseX > x && mouseY > y){
       varX = 7;
       varY = 7; 
     }
     else if(mouseX < x && mouseY < y){
       varX = 3;
       varY = 3;       
     }
     else if(mouseX > x && mouseY < y){
       varX = 10;
       varY = 10;
     }
     else if(mouseX < x && mouseY > y){
       varX = 8;
       varY = 8;
     }
     else{
       varX = 7;
       varY = 7;
     }
     
     x = x + (int) (Math.random() * 10) - varX; 
     y = y + (int) (Math.random() * 10) - varY; 
     
    }
 }    
 
