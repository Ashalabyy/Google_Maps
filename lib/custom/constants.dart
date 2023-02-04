import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFe0b1cb);
const kPrimaryLightColor = Color(0xFF5e548e);
const kSecondaryColor = Color(0xFF9f86c0);
const kTextColor = Color(0xFF231942);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF9f86c0),
    Color(0xFFe0b1cb),
  ],
);
final headingStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w900,
  letterSpacing: 2.0,
  color: Colors.pink.withOpacity(0.7),
  fontFamily: 'Roboto',
  height: 1.5,
);
// use Your Google Maps Key
const GoogleMapKey = '';
