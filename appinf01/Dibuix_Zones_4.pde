void dibuixaCerca(){
  pushStyle();
  fill(colorC); textSize(20); textAlign(LEFT);
 text("Buscar por palabras", width/5, height/10-5); 
    fill(0); textSize(48); textAlign(LEFT);
   popStyle(); 
    
  
cercaText.display();
sfc.display();
bCerca.display();
s3.display();
s4.display();
}

void dibuixaResultats(){
pc.display(50,50,cardsW,cardsH);
br1.display();
br2.display();
}
