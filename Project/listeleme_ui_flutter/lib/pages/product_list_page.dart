import 'package:flutter/material.dart';
import 'package:ui_2/components/product_cart.dart';
import 'package:ui_2/layout/main_layout.dart';

class PageProductList extends StatefulWidget {
  const PageProductList({Key? key}) : super(key: key);

  @override
  _PageProductListState createState() => _PageProductListState();
}

class _PageProductListState extends State<PageProductList> {
  @override
  Widget build(BuildContext context) {
    return LayoutMain(
      content: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 50,
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: CompProductCard(),
            );
          },
        ), // ListView.builder
      ), // Container
    ); // LayoutMain
  }
}
