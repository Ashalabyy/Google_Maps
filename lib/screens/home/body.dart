import 'package:flutter/material.dart';
import '../home/TopCategories.dart';

import './IconsAndCategories.dart';
import '../../custom/SizeConfig.dart';
import './SpecialProducts.dart';
import './IconsAndBrands.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconsWithCategories(),
        SizedBox(
          height: Height10(context),
        ),
        TopCategories(),
        SizedBox(
          height: Height10(context),
        ),
        IconsWithBrands(),
        SizedBox(
          height: Height10(context),
        ),
        SpecialProducts(),
      ],
    );
  }
}
