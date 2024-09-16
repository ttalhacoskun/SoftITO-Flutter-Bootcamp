import 'package:fonksiyonvemethodkullanimi/fonksiyonvemethodkullanimi.dart' as fonksiyonvemethodkullanimi;
import 'package:test/test.dart';

void main(List<String> arguments) {
  // print(Selamla("Talha"));
  DuzenliAdSoyad("MEHMET", "ekmen");
  
KisiSelamla("Mehmet", ikinciAd: "Fatih", soyad: "EKMEN");

IslemYap("Toplam",kontrol: true,sayi2: 30, sayi1: 10);

ArrowFunction();
int sayiDeger=5;

//                  şart              true ise              false ise

  String Sonuc  = sayiDeger > 0 ? "Sayı 0 dan büyük" : "sayı 0 dan küçük";

}
  String Selamla(String Ad){
    return "merhaba $Ad";
  }

  String Asdasdasd(String Ad) {
return "Merhaba $Ad";
}

void DuzenliAdSoyad(String Ad, String Soyad) {
String DuzenliAd = Ad.substring(0, 1).toUpperCase() +
Ad.substring(1, Ad.length).toLowerCase();
String DuzenliSoyad = Soyad.toUpperCase();

print("$DuzenliAd $DuzenliSoyad");
}

void KisiSelamla(String Ad, {String? ikinciAd, String? soyad}) {}

void IslemYap(String IslemTipi, {int? sayi1, int? sayi2, bool? kontrol}) {}

void ArrowFunction()=>print("Arrow Function Kullanimi");