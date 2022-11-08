import 'package:donut_app/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  List smoothiesOnSale = [
    ['Banana Smoothie', '40', Colors.blue, 'assets/images/banana_smoothie.png'],
    ['Strawberry Smoothie','55', Colors.pink, 'assets/images/strawberry_smoothie.png'],
    ['Grape Smoothie', '68', Colors.purple, 'assets/images/grape_smoothie.png'],
    ['matcha Smoothie', '40', Colors.blue, 'assets/images/matcha_smoothie.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
      ),
      itemCount: smoothiesOnSale.length,
      padding: EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
    );
  }
}
