import 'dart:ffi';
import './matematikislemleri.dart';
import 'personel.dart';

// class StringIslemler {

  // String deneme1 = "";
  // int deneme2 = 2;

//   String KucukHarf(String veri) {
//     return veri.toLowerCase();
//   }
//   String BuyukHarf(String veri) {
//     return veri.toUpperCase();
//   }
// }


void main(List<String> args) {
  // StringIslemler isl = StringIslemler();

  // // var rtn = isl.BuyukHarf("Talha");

  // // print(rtn);

  // MatematikIslemler mtm = MatematikIslemler();
  // mtm.sayi1 = 10;
  // mtm.sayi2 = 15;

  // mtm.Toplam();

  // print(mtm.SonucBilgisi());



  Personel prs = Personel();

  prs.Ad = "Erkan";
  prs.soyad = "lkndflm";
  
  print("Personel Adi ${prs.Ad} ${prs.Soyad} - ${prs.Birim}");
}