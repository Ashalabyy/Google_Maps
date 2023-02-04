import 'package:flutter/material.dart';
import 'components/DrawerFooter.dart';
import './body.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: DrawerFooter(),
      body: body(),
    );
  }
}
