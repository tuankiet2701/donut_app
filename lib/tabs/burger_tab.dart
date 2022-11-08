import 'package:flutter/material.dart';

import '../utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgersOnSale = [
    ['Burger 1', '40', Colors.blue, 'assets/images/burger1.png'],
    ['Burger 2', '35', Colors.pink, 'assets/images/burger2.png'],
    ['Burger 3', '58', Colors.purple, 'assets/images/burger3.png'],
    ['Burger Cheese', '69', Colors.brown, 'assets/images/cheese-burger.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: burgersOnSale.length,
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
    );
  }
}
