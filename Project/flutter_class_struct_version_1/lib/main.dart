abstract class Arac {
double get yakitTankeriBoyutu;
double get motorHacmi;
isiklariAc();

tekerlekleriKullan();
}

abstract class Araba extends Arac {
@override
isiklariAc() {
print('Arabanin isiklari acildi');
}

@override
tekerlekleriKullan() {
print('Arac tekerlekleriyle ilerleyebilir');
}
}

abstract class Gemi extends Arac implements CapaAtabilen {
@override
isiklariAc() {
print('geminin isiklari acildi');
}

@override
tekerlekleriKullan() {
print('gemide tekerlek yok');
}

@override
capaAt() {

}
}

class Vapur extends Gemi {
@override
double get motorHacmi => 500;

@override
double get yakitTankeriBoyutu => 200;

}

mixin KornaliArabaMixin on Araba {
@override
isiklariAc() {
print('KORNAYA BASILDI');
return super.isiklariAc();
}
}

class Vosvagen extends Araba {
@override
double get motorHacmi => 500;

@override
double get yakitTankeriBoyutu => 400;
}

abstract class CapaAtabilen {
capaAt() {
print('capa atildi');
}
}