 //declare bacteria variables here   
 Bacteria [] bob;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	bob = new Bacteria[100];
 	for(int i = 0;i<bob.length;i++)
 	{
	bob[i] = new Bacteria();
	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(255);  
 	for(int i = 0; i<bob.length;i++)
 	{
	bob[i].move();
	bob[i].show();
	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX,myY,myColor;
 	Bacteria()
 	{
 		myX=250;
 		myY=250;
 		myColor=(int)(Math.random()*255);
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 	void move()
 	{
 		myX+=(int)(Math.random()*5)-2;
 		myY+=(int)(Math.random()*5)-2;
 	}

 }    