void dibuixaFons(){
pushStyle();
rectMode(CENTER);
fill(200);
rect(width/2, height/2, 3*width/6, 9*height/10);
popStyle();
}


//void dibuixaImatge(){
//PImage img;
//img= loadImage("Usuari.png");
//image(img, width/2+2*width/4, height/2+2*height/4);
//}

void dibuixaLogin(){
  fill(0); 
  textSize(48); 
  textAlign(LEFT);
  text("LOGIN FORM", 100, 60);
  textSize(24); 
  text("Username: ", 100, 130);
  text("Password: ", 100, 180);
 // Dibuixa els camps de text
   userText.display();
   passText.display();
   
   
  
}
