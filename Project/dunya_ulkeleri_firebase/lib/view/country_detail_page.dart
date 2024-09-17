import 'package:dunya_ulkeleri/model/country.dart';
import 'package:dunya_ulkeleri/view_model/country_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryDetailPage extends StatelessWidget {
  const CountryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Country>(
          builder: (context, country, child) => Text(country.name),
        ),
      ),
    );
  }
}
