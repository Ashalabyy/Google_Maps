import 'package:flutter/material.dart';
import '../../custom/SizeConfig.dart';
import '../../models/product.dart';

class SpecialProducts extends StatefulWidget {
  const SpecialProducts({super.key});

  @override
  State<SpecialProducts> createState() => _SpecialProductsState();
}

class _SpecialProductsState extends State<SpecialProducts> {
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
                  'PRODUCTS',
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
                  width: 15,
                  height: 15,
                  //color: Color(0xFFe9c46a),
                  image: AssetImage("assets/icons/offers.png"),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: Height10(context),
        ),
        Container(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              height: 180,
              width: 180,
              margin: EdgeInsets.all(
                Width10(context),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFf4a261).withOpacity(
                      0.2,
                    ),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 6.0,
                  )
                ],
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xFFe76f51),
                        ),
                      ],
                    ),
                    Image(
                      height: Height140(context),
                      width: Width140(context),
                      image: AssetImage('assets/images/number.jpg'),
                    ),
                    Text(
                      'Birthday Ballons in stock ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFe76f51),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ],
                    ),
                    Text(
                      '200',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF264653),
                        decoration: TextDecoration.lineThrough,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                    Text(
                      '140 EGP',
                      style: TextStyle(
                        fontSize: FontSize14(context),
                        color: Color(0xFF264653),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
