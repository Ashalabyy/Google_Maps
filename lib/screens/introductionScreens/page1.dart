import 'package:flutter/material.dart';
import '../../custom/constants.dart';
import 'package:flutter_svg/svg.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/gift.png",
              scale: 2.0,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
      ),
    );
  }
}
