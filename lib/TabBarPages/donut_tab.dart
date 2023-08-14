import 'package:flutter/material.dart';

import 'donut_tile.dart';

class DonutTAb extends StatelessWidget {
  //list of donut
  List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "images/icecream_donut.png"],
    ["Strawberry", "66", Colors.red, "images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "images/grape_donut.png"],
    ["Choco", "96", Colors.brown, "images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: donutOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return DonuTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutcolor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
