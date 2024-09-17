String Ad = "";
String Soyad = "";

String BuyukHarf(String veri) {
return veri.toUpperCase();
}

String KucukHarf(String veri) {
return veri.toLowerCase();
}

String ilkHarfBuyuk(String veri) {
return BuyukHarf(veri.substring(0, 1)) +
KucukHarf(veri.substring(1, veri.length));
}

void Ad_SoyadDuzenli() {
String duzenliAdSoyad = "${ilkHarfBuyuk(Ad)} ${BuyukHarf(Soyad)}";
print(duzenliAdSoyad);
}