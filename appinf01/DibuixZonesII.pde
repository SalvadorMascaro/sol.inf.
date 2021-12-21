
void dibuixaPagina() {
  pushStyle();
  fill(100);
  rectMode(CENTER);
  rect(W/2, H/2, pageWidth, pageHeight);
  fill(0);
  text("somni escrit", W/2, H/2); 
  popStyle();
}
void dibuixaBotoGuardar() {
  bGuardar.display();
}
void dibuixaInserirDream(){
  textDream.display();
}
