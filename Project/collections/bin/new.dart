import 'package:collections/collections.dart' as collections;

import 'dart:math' as math;

void main(List<String> arguments) {
  final random = math.Random();
  const int ascii65 = 65;
  List<String> harfler =
      List.generate(26, (index) => String.fromCharCode(ascii65 + index));
  print(harfler);

  print('ilk harf ${harfler.first}');

  print('son harf ${harfler.last}');

  print('harf sayısı ${harfler.length}');

  print('tersten ${harfler.reversed}');

  harfler[3] = 'DE';
  print(harfler);

  List<String> harflerAltKumesi = harfler.sublist(10);
  print('alt küme ${harflerAltKumesi}');

  harfler.remove('DE');
  print('DE olmayan küme $harfler');
  harfler.add('test');
  harfler.addAll(['ç', 'ö']);
  print(harfler);

  harfler.shuffle();
  print('karışık harfler $harfler');

  harfler.sort((a, b) => a.codeUnits.first.compareTo(b.codeUnits.first));
  print(harfler);
}
