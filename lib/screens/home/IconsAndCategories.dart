import 'package:flutter/material.dart';

class IconsWithCategories extends StatefulWidget {
  const IconsWithCategories({super.key});

  @override
  State<IconsWithCategories> createState() => _IconsWithCategoriesState();
}

class _IconsWithCategoriesState extends State<IconsWithCategories> {
  double DesignerHeight = 812;
  double DesignerWidth = 375;

  List<Image> icons = [
    Image.asset(
      'assets/images/balloons.png',
      scale: 375 / 411.4,
    ),
    Image.asset(
      'assets/images/cheesecake.png',
      scale: 375 / 411.4,
    ),
    Image.asset(
      'assets/images/gift-card.png',
      scale: 375 / 411.4,
    ),
    Image.asset(
      'assets/images/surprise.png',
      scale: 375 / 411.4,
    ),
    Image.asset(
      'assets/images/chocolate-bar.png',
      scale: 375 / 411.4,
    ),
  ];
  Widget Categories(int index) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color(0xFFe0b1cb).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: icons[index] as Image,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Categories(0),
        Categories(1),
        Categories(2),
        Categories(3),
        Categories(4),
      ],
    );
  }
}
