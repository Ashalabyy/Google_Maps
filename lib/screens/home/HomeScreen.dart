import 'package:flutter/material.dart';
import './body.dart';
import './HomeHeader.dart';

class HomeScreen extends StatelessWidget {
  static const RouteName = '/Home';

  @override
  Widget build(BuildContext context) {
    return HomeHeader();
  }
}
