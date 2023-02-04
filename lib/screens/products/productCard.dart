import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final double width;
  final double aspectRetio;
  // final Product product;
  const ProductCard({
    this.width = 140,
    this.aspectRetio = 1.02,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isitFav = true;
  void isFavorite() {
    setState(() {
      // widget.product.isFavourite = !widget.product.isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeigh = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 140,
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFf9c74f).withOpacity(0.4),
                            offset: Offset(0, 5),
                            blurRadius: 4.0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hello',
                style: TextStyle(
                  fontFamily: 'Roboto-Bold',
                  fontWeight: FontWeight.w700,
                  // fontSize: 25,
                  color: Color(0xFF277da1),
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "EGP ${340}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFf94144).withOpacity(0.7),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: isFavorite,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.bike_scooter),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
