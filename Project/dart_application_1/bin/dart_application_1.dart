import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {

  //var değişkeni değişken içeriğine eklenecek olan cerinin belirli olmadığı önceden ön görülmediği durumlarda kullanılabilecek değişken tipidir.
  var yazisalDegisken = "Erkan";
  var sayisalDegiskeb = 123;
  var mantiksalDegisken = true;


  String yazisalTip1 = "Erkan Kilmen";
  String yazisalTip2 = "Ahmet Mehmetoğlu";


  String tekTirnakKullanimi = "Eğitmen Erkan'ın Bilgisayarı";
  String ciftTirnakKullanimi = 'En güzel şehir "izmir" dir';

  String CokluVeri = """
Birinci satır
    İkinci satır
  Üçüncü satır
""";

//print(CokluVeri);



// Değişken içeriğine atancak sayısal değerin virgüllü ya da tam sayı tipinden ahngisiner ait olacağı bilinmediği durumlarda kullanılır.
num sayisalDeger = 123;
num sayisalDeger2 = 12.23;

// Tam sayı tipindeki değerlerin atanacağı değişken tipi
int tamSayiDegiskenleri = 123;

//virgüllü değerlerin atanacağı değişken tipi
double virgulluSayi = 12.3;

bool mantiksal1 = true;
bool mantiksal2 = false;

dynamic dynamicDegisken = "Degisken Verisi";
print(dynamicDegisken);

dynamicDegisken = 123;
print(dynamicDegisken);

dynamicDegisken = true;
print(dynamicDegisken);

dynamicDegisken = 12.3;
print(dynamicDegisken);

var varDegisken = "Degisken Verisi";
// varDegisken = 123;


}
