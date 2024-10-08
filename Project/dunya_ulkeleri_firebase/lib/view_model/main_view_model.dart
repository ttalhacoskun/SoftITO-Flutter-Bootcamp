import 'dart:convert';

import 'package:dunya_ulkeleri/model/country.dart';
import 'package:dunya_ulkeleri/view/country_detail_page.dart';
import 'package:dunya_ulkeleri/view_model/country_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class MainViewModel with ChangeNotifier {
  final String _apiUrl =
      "https://restcountries.com/v3.1/all?fields=name,flags,cca2,capital,languages,region,population";

  List<Country> _countries = [];

  List<Country> get countries => _countries;

  MainViewModel() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCountries();
    });
  }

  void _getCountries() async {
    Uri uri = Uri.parse(_apiUrl);
    http.Response response = await http.get(uri);

    List<dynamic> allCountries = jsonDecode(response.body);

    for (Map<String, dynamic> countryMap in allCountries) {
      Country country = Country.fromMap(countryMap);
      _countries.add(country);
    }
    notifyListeners();
  }

  void countryClicked(BuildContext context, Country country) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => CountryDetailViewModel(),
        child: CountryDetailPage(),
      ),
    );
    Navigator.push(context, pageRoute);
  }
}
