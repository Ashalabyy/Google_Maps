import 'package:flutter/material.dart';

class IconsWithBrands extends StatefulWidget {
  const IconsWithBrands({super.key});

  @override
  State<IconsWithBrands> createState() => _IconsWithBrandsState();
}

class _IconsWithBrandsState extends State<IconsWithBrands> {
  double DesignerHeight = 812;
  double DesignerWidth = 375;

  List<Image> icons = [
    Image.asset(
      'assets/images/el3abd.jpg',
    ),
    Image.asset(
      'assets/images/dukes.png',
    ),
    Image.asset(
      'assets/images/mongini.png',
    ),
    Image.asset(
      'assets/images/tseppas.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'BRANDS',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF264653),
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Image(
                  width: 12,
                  height: 12,
                  color: Color(0xFFf4a261),
                  image: AssetImage(
                    "assets/icons/Brands.png",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF264653),
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.keyboard_double_arrow_right_rounded,
                  size: 14,
                  color: Color(0xFFf4a261),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 120,
          child: ListView.builder(
            itemCount: icons.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    color: Color(0xFFf4a261).withOpacity(
                      0.2,
                    ))
              ]),
              child: Card(
                child: icons[index],
              ),
              margin: EdgeInsets.all(5),
              width: 120,
            ),
          ),
        ),
      ],
    );
  }
}
