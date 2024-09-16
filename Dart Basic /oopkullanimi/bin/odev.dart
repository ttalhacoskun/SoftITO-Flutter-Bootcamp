class Urun {
  String adi;
  double fiyati;
  int satisAdedi;

  Urun(this.adi, this.fiyati, this.satisAdedi);
}

double tutar(Urun urun, int adet) {
  if (adet <= 0) {
    throw ArgumentError('Adet 0 veya daha küçük olamaz.');
  }

  double toplamTutar = urun.fiyati * adet;
  return toplamTutar;
}

void main() {
  Urun aUrunu = Urun('Elma ürünü', 100, 10);
  int satisAdedi = 10;

  try {
    double urunTutari = tutar(aUrunu, satisAdedi);
    print('${aUrunu.adi} üründen $satisAdedi adet satış tutarı: $urunTutari');
  } catch (e) {
    print('Hata: $e');
  }
}
