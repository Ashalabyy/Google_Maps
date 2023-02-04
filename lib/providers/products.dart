import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      title: 'ROSE',
      ImageURl: 'assets/images/Rose.jpg',
      description: 'Factory wholesale Wedding Decor rose',
      rate: '5.5',
    ),
    Product(
      title: 'BAllONS',
      ImageURl: 'assets/images/ballons2.jpg',
      description: 'Birthday Ballons in stock ',
      rate: '2.5',
    ),
    Product(
      title: 'GIFTBOX',
      ImageURl: 'assets/images/gift2.jpg',
      description: 'Birthday giftBox can be customized ',
      rate: '4.5',
    ),
    Product(
      title: 'iCECREAM',
      ImageURl: 'assets/images/sunday.jpg',
      description: 'Ice cream Cone Sweets ',
      rate: '5',
    ),
  ];
  List<Product> get items {
    return [..._items];
  }
}
