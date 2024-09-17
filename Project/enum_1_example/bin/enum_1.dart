import 'dart:io';
import 'package:enum_1/enum_1.dart' as enum_1;

enum Authtype { anon, normal, twitter, facebook, google }

void main(List<String> arguments) {
  for (var i = 0; i < Authtype.values.length; i++) {
    print('${i + 1}${Authtype.values[i].name}');
    // print('Hello world: ${enum_1.calculate()}!');
  }
  print("select auth type \n");
  try {
    final selectedIndex = int.parse(stdin.readLineSync() ?? '');
    final selectedType = Authtype.values[selectedIndex - 1];
    switch (selectedType) {
      case Authtype.anon:
        print("your sing in as a anon");
      case Authtype.normal:
        print("your sing in as a normal");
      case Authtype.twitter:
        print("your sing in as a twitter");
      case Authtype.facebook:
        print("your sing in as a facebook");
      case Authtype.google:
        print("your sing in as a google");
    }
  } on FormatException {
    print("enter a number pls");
    main(arguments);
  } on RangeError {
    print("hata ${Authtype.values.length}");
  } catch (e) {
    print("e");
  }
}
