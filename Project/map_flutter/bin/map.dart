import 'dart:developer';

import 'package:map/map.dart' as map;

void main(List<String> arguments) {
  Map<String, dynamic> data = {
    // 'productName': 'Sony',
    'productPrice': 12.5,
    'isSold': false,
  };
  log(data.toString());
  print(data['productName']);
  if (data.containsKey('productName')) {
    print(data['productName']);
  } else {
    print('productName key not defined');
  }

  List<Map<String, dynamic>> test = [];
}
