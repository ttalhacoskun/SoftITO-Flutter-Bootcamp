import 'dart:collection';

import 'package:queuekullanimi/queuekullanimi.dart' as queuekullanimi;

void main(List<String> arguments) {
Queue<int> sayilar = Queue.from([1,2,3,4,5,6,7,8]);

sayilar.add(12);
sayilar.addFirst(222);
sayilar.addLast(555);

// for ( var element in sayilar) {
//   print(element);
// }

List <int> sayiliste = [1,2,3,4,5];

sayiliste.insert(0, 111);
sayiliste.insert(sayiliste.length, 3333);

for (var element in sayiliste){
  print(element);
} 
}
