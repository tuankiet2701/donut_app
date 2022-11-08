import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  const BurgerTile(
      {super.key,
      required this.burgerFlavor,
      required this.burgerPrice,
      this.burgerColor,
      required this.imageName});
  final String burgerFlavor;
  final String burgerPrice;
  final burgerColor;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      color: burgerColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            //burger picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Image.asset(imageName),
            ),

            //burger flavor
            Text(
              burgerFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),

            //love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),

                  //add icon
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
