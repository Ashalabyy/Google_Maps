import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../custom/constants.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/birthday-cake.png",
                scale: 2.0,
              ),
              Text(
                textAlign: TextAlign.center,
                '''Our Responsibilty is to deliver our bakes '' 
                to you asdsadsadsadsadsadsadsad''',
                style: headingStyle,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
        ),
      ),
    );
  }
}
