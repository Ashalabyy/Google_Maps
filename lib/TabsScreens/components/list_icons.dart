import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final items = [
  Image.asset(
    fit: BoxFit.cover,
    "assets/images/Category.png",
    color: Colors.white,
  ),
  SvgPicture.asset(
    fit: BoxFit.cover,
    "assets/icons/User Icon.svg",
    color: Colors.white,
  ),
  Image.asset(
    "assets/images/home.png",
    fit: BoxFit.cover, color: Colors.white, //Color(0xFF03045e),
  ),
  SvgPicture.asset(
    fit: BoxFit.cover,
    "assets/icons/Settings.svg",
    color: Colors.white,
  ),
  Image.asset(
    "assets/images/Favorites.png",
    fit: BoxFit.cover,
    color: Colors.white,
  ),
];
