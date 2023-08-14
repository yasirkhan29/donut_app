import 'package:flutter/material.dart';

class DonuTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutcolor;
  final String imageName;
  DonuTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutcolor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutcolor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            // small side container
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutcolor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$' + donutPrice,
                    style: TextStyle(
                        color: donutcolor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            // donut pictuer
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Image.asset(imageName),
            ),
            // donut flavor
            Text(
              donutFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Dunkins",
              style: TextStyle(color: Colors.grey[600]),
            ),
            // love icon
            SizedBox(
              height: 12,
            ),
            // love and add icons
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
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
            )
          ],
        ),
      ),
    );
  }
}
