import 'package:collections/collections.dart' as collections;

import 'dart:math' as math;

void main(List<String> arguments) {
  final random = math.Random();
  const int letterAsciiStartPoint = 65;
  List<String> halfler = List.generate(
      26, (index) => String.fromCharCode((letterAsciiStartPoint + index)));
  print(halfler);

  print('ilk Half ${halfler.first}');
  print('son half ${halfler.last}');

  print('alfabedeki half sayisi: ${halfler.length}');

  print('alfabeyi tersten yazalim ${halfler.reversed}');

  halfler[3] = 'test';
  print(halfler);
  List<String> halflerAltKumesi = halfler.sublist(10);
  print('alt kume ornegi: $halflerAltKumesi');
  // test iceren veriyi siler

  halfler.remove('test');
  print('test datasi silinmis halfer kumesi : $halfler');
  halfler.add('test');
  print('test datasi eklenmis halfer kumesi : $halfler');
  halfler.addAll(['Ç', 'Ö']);
  print('test datasina yeni veriler girilmis halfer kumesi : $halfler');

  halfler.shuffle();
  print('halfler listesinin karistirilmis hali $halfler');

  halfler.sort((a, b) => a.codeUnits.first.compareTo(b.codeUnits.first));
  print('halflerin siralanmis hali tekrar $halfler');
  halfler = List.filled(halfler.length, 'BOS');
  print(halfler);

  List<int> sayilar = List.generate(26, (index) => index);

  for (var element in sayilar) {
    print('$element in karesi ${math.pow(element, 2)}');
    print('$element in karekoku ${math.sqrt(element)}');
  }

  // print('Hello world: ${collections.calculate()}!');
}
