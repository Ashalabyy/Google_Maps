import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerList extends StatelessWidget {
  Row DrawerTile(String ImageURl, String text) {
    return Row(
      children: [
        SvgPicture.asset(
          ImageURl,
          width: 20,
          height: 20,
          color: Colors.red,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Column(
          children: [
            DrawerTile("assets/icons/location.svg", "My Adresess"),
            Divider(
              endIndent: 200,
              indent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            DrawerTile("assets/icons/orders.svg", "My Orders"),
            Divider(
              endIndent: 200,
              indent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            DrawerTile("assets/icons/Heart Icon.svg", "My Favorites"),
            Divider(
              endIndent: 200,
              indent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
