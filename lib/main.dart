import 'package:flutter/material.dart';
import 'package:furnitures/screens/cart/CartScreen.dart';

/*import './screens/home/HomeScreen.dart';
import './screens/Favorites/FavoritesScreen.dart';
import './screens/cart/CartScreen.dart';
import './screens/categories/CategoriesScreen.dart';
import './screens/sign_up/SignupScreen.dart';
import './screens/otp/otpScreen.dart';
import './screens/products/productsScreen.dart';
import './screens/products_details/productsDetailsScreen.dart';
import 'package:furnitures/TabsScreens/TabsScreen.dart';


import './screens/sign_in/SigninScreen.dart'; */
import 'TabsScreens/TabsScreen.dart';
import './screens/home/HomeScreen.dart';
import 'package:provider/provider.dart';
import './providers/products.dart';
import './screens/map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CartScreen(),
        /*   routes: {
          // our Screen pages Route's .....
          TabsScreen.RouteName: (context) => 
          HomeScreen.RouteName: (context) => HomeScreen(),
          SignupScreen.RouteName: (context) => SignupScreen(),
          SigninScreen.RouteName: (context) => SigninScreen(),
          otpScreen.RouteName: (context) => otpScreen(),
          CategoriesScreen.RouteName: (context) => CategoriesScreen(),
          FavoriteScreen.RouteName: (context) => FavoriteScreen(),
          ProductsScreen.RouteName: (context) => ProductsScreen(),
          ProductsDetailsScreen.RouteName: (context) => ProductsDetailsScreen(),
          CartScreen.RouteName: (context) => CartScreen(),
        },  */
      ),
    );
  }
}
