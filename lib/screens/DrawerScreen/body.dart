import 'package:flutter/material.dart';
import 'components/DrawerHeaders.dart';

import 'components/DrawerList.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 15),
        child: Column(
          children: [
            DrawerHeaders(),
            DrawerList(),
          ],
        ),
      ),
    );
  }
}
