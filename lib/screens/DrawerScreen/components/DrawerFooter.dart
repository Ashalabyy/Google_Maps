import 'package:flutter/material.dart';

class DrawerFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 15),
      child: Row(
        children: [
          Image(
            width: 140,
            height: 140,
            image: AssetImage('assets/images/splas.jpg'),
          ),
        ],
      ),
    );
  }
}
