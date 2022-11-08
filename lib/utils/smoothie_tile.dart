import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  const SmoothieTile(
      {super.key,
      required this.smoothieFlavor,
      required this.smoothiePrice,
      this.smoothieColor,
      required this.imageName});
  final String smoothieFlavor;
  final String smoothiePrice;
  final smoothieColor;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                      color: smoothieColor[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      )),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      color: smoothieColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            //picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Image.asset(imageName),
            ),

            //flavor
            Text(
              smoothieFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.green[600]),
            ),
            // const SizedBox(height: 12),

            //love + add icon
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
