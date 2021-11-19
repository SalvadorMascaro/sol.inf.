
void dibuixaPagina(){
  pushStyle();
  fill(100);
  rectMode(CENTER);
  rect(W/2, H/2, pageWidth, pageHeight);
  fill(0);
  text("somni escrit", pageWidth, pageHeight); 
  popStyle();
}  
void dibuixaBotoGuardar(){
fill(100);
  rect(marginH, marginV+ logoHeight+20, 100, 60);
  fill(0);
  textAlign(LEFT);
  text("GUARDAR",marginH+5, marginV+ logoHeight+50);
}
