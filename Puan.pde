public class Puan {

  float x = 6;                                    //buton x koordinati
  float y = 0;
  float forHundred = 0; //100 için ekstra
  float xSize = 212;
  float ySize = 120;
  //213,33 yatay size, 120 dikey size
  int puan;
  int i ;
  int j ;

  Puan(int _i, int _j) {
    puan = round(random(80, 100));
    i = _i;
    j = _j;
  }


  void disPlay() {

    //fill(#4000ff);
    //stroke(0);
    //strokeWeight(10);
    if(puan == 100){
      forHundred = 20;
    }
    noStroke();

    beginShape();
    texture(img);
    vertex(x + (i * 212), y + (j * 120), 0, 0);
    vertex(x + xSize + (i * 212), y + (j * 120), 221, 0);
    vertex(x + xSize + (i * 212), y + ySize + (j * 120), 221, 125);
    vertex(x + (i * 212), y + ySize + (j * 120), 0, 125);
    endShape();
    //rect(x + (i * 212), y + (j * 120), xSize, ySize);
    textSize(60);
    fill(#D3D3D3);
    textFont(font);
    text(puan, x + xSize/3 + (i * 212) - forHundred, y + ySize/2 + (j * 120) + 20, 1);
  }
}
