int Width0= 600;
int Height0=600;
void dibuixaFons(){
pushStyle();
rectMode(CENTER);
fill(200);
rect(width/2, height/2, 3*width/6, 9*height/10);
popStyle();
}


void dibuixaImatge(){
PImage img;
img= loadImage("Usuari.png");
image(img, width/2, height/2+2*height/4);
}

void dibuixaLogin(){
  fill(0); 
  textSize(48); 
  textAlign(LEFT);
  text("LOGIN FORM", 100, 60);
  textSize(24); 
  text("Username: ", width/2-250, height/2+25);
  text("Password: ", width/2-250, height/2+80);
 // Dibuixa els camps de text
   userText.display();
   passText.display();
   
   
  
}
