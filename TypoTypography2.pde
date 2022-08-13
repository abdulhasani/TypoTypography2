
PFont font;
int margin = 20;
int gap = 50;
int counter = 33;
int y = 0;
int x = 0;
int radian = 0;
int maxY= 0;

/**
 Method setup
 Method ini akan dipanggil pertama kali saat project dirun, dipanggil hanya sekali.
 method ini berisi 
 1. perintah untuk setup awal screen / canvas
 2. default background black
 3. Mencetak daftar font yang ada di OS
 4. Membuat object font
 5. set font untuk text
 6. Mengatur posisi text
 */
void setup() {
  fullScreen();
  background(0);
  printArray(PFont.list());
  font = createFont("FreeSans", 35);
  textFont(font);
  textAlign(CENTER, CENTER);
}

/*
Method Draw
 Method ini akan dipanggil setelah method setup, 
 semua logic dalam method ini akan dipanggil terus menerus
 method ini seperti halnya perulangan. 
 */
void draw() { 
  translate(margin*2, margin*2);
  char letter = char(counter);  
  text(letter, x, y);
  counter++;

  x += gap;
  if (x > (width/8)  && x < (width/2)-600) {
    y += 25;
    maxY= y-25;
  }

  if (x > 600) {
    y -= 30;
  }

  /*
  Pindah Baris
   */
  if (x > width) {
    x = 0;
    y = maxY;
  } 

  /*
  Reset Kanvas
   */
  if (y > height) {
    background(0);
    y=0;
  }


  if (counter > 500) {
    counter = 0;
  }
}
