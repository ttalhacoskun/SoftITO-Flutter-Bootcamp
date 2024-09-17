import 'package:class_yapisi/class_yapisi.dart' as class_yapisi;

void main(List<String> arguments) {
  List<Canli> canlilar = [Insan(), Tavsan()];
  List<IBesin> besinler = [Biftek(), Cicek()];
  for (var canli in canlilar) {
    for (var yemek in besinler) {
      canli.yemekYe(yemek);
    }
  }
}

enum BesiTipi { etcil, otcul }

abstract class Canli {
  double protein = 0.0, karbonhidrat = 0.0;
  List<BesiTipi> get beslenmeSekli;

  yemekYe(IBesin besin) {
    if (besin.etIceriyormu &&
        beslenmeSekli.length == 2 &&
        beslenmeSekli.firstOrNull != BesiTipi.otcul) {
      protein += besin.protein;
      print('canli bu besini tuketemez');
    } else {
      print('yemek yenildi.');
    }
    karbonhidrat += besin.karbonhidrat;
    print(
        'canlinin yeni degerleri protein: $protein, karbonhidrat: $karbonhidrat ');
  }

  uyu() {
    print('canli uyudu');
  }
}

class Tavsan extends Canli {
  @override
  List<BesiTipi> get beslenmeSekli => [BesiTipi.otcul];
}

class Insan extends Canli {
  @override
  List<BesiTipi> get beslenmeSekli => [BesiTipi.etcil, BesiTipi.otcul];
}

class Cicek implements IBesin {
  @override
  bool get etIceriyormu => false;

  @override
  double get karbonhidrat => 10;

  @override
  double get protein => 0.0;
}

class Biftek implements IBesin {
  @override
  bool get etIceriyormu => true;

  @override
  double get karbonhidrat => 10;

  @override
  double get protein => 200;
}

abstract class IBesin {
  double get protein;
  double get karbonhidrat;
  bool get etIceriyormu;
}
