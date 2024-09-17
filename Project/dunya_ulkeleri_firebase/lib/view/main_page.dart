import 'package:dunya_ulkeleri/model/country.dart';
import 'package:dunya_ulkeleri/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ülkeler"),
      ),
      body: _buildCountryList(context),
    );
  }

  Widget _buildCountryList(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.countries.length,
        itemBuilder: (context, index) {
          return ChangeNotifierProvider.value(
            value: viewModel.countries[index],
            child: _buildListTile(context),
          );
        },
      ),
    );
  }

  Widget _buildListTile(BuildContext context) {
    MainViewModel viewModel = Provider.of<MainViewModel>(
      context,
      listen: false,
    );
    return Consumer<Country>(
      builder: (context, country, child) => ListTile(
        title: Text(country.name),
        subtitle: Text(country.capital),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(country.flag),
        ),
        onTap: () {
          viewModel.countryClicked(context, country);
        },
      ),
    );
  }
}
