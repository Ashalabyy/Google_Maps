import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../custom/constants.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/cakes.png",
            scale: 2.0,
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
      ),
    );
  }
}
