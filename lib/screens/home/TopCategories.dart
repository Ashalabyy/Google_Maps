import 'package:flutter/material.dart';
import 'package:furnitures/custom/SizeConfig.dart';
import '../../models/product.dart';
import 'package:provider/provider.dart';
import '../../providers/products.dart';

class TopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductsList = Provider.of<Products>(context).items;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'CATEGORIES',
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
                    "assets/icons/Categories.png",
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
        SizedBox(
          height: Height20(context),
        ),
        Container(
          height: 240,
          child: ListView.builder(
            itemCount: ProductsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  color: Color(0xFFf4a261).withOpacity(
                    0.2,
                  ),
                )
              ]),
              margin: EdgeInsets.all(4),
              width: 150,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ProductsList[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF264653),
                          fontSize: 10,
                        ),
                      ),
                      Image(
                        image: AssetImage(ProductsList[index].ImageURl),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
