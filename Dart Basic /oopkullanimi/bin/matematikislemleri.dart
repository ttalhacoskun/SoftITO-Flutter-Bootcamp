class MatematikIslemler{
  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;

  void Toplam(){
    sonuc = sayi1 + sayi2;
  }
  void Cikart(){
    sonuc = sayi1 - sayi2;
  }
  void Carp(){
    sonuc = sayi1 * sayi2;
  }
  int SonucBilgisi(){
    return sonuc;
  }
}