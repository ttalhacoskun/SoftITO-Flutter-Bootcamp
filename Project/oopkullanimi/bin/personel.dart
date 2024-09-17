class Personel{
String _ad = "";
String _soyad = "";
String _birim = "Yazilim Geliştirme";

set Ad(String personelAdi){
  _ad = personelAdi.substring(0,1).toUpperCase() + 
  personelAdi.substring(1, personelAdi.length).toLowerCase();
}

set soyad(String personelSoyadi){
  _soyad = personelSoyadi.toUpperCase();
}

String get Ad{

  return _ad;
}
String get Soyad{
  return _soyad;
}
String get Birim{
  return "Yazilim Geliştirme";
}


}