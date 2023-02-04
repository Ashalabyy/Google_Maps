import 'package:flutter/material.dart';
//import 'package:furnitures/custom/SizeConfig.dart';
import './../screens/home/HomeScreen.dart';
import '../screens/DrawerScreen/DrawerScreen.dart';
/*import 'components/list_pages.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'components/list_icons.dart';
import '../custom/constants.dart'; */

class TabsScreen extends StatefulWidget {
  static const RouteName = '/TabsScreen';
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}





/* 
Scaffold(
      //backgroundColor: Colors.white,
      extendBody: true,
      body: pages[index],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: kPrimaryColor.withOpacity(0.4),
        color: kPrimaryColor,
        height: 60,
        //backgroundColor: Colors.blue,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(
          milliseconds: 400,
        ),
        index: 2,
        items: items,
        onTap: (value) => setState(() {
          this.index = value;
        }),
      ),
    );

*/
