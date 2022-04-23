import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyConstant {
  // Gernaral
  static String appName = 'Shopping Mall';

  // Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeBuyerService = '/buyerService';
  static String routeSellerService = '/sellerService';
  static String routeRiderService = '/riderService';

  // Images
  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';
  static String image4 = 'images/image4.png';

  // Styles
  static Color primary = Color(0xff80a9);
  static Color dark = Color(0xffc94f7a);
  static Color light = Color(0xffb2da);

  // TextStype
  TextStyle h1_Style() =>
      TextStyle(fontSize: 24, color: dark, fontWeight: FontWeight.bold);
  TextStyle h2_Style() =>
      TextStyle(fontSize: 18, color: dark, fontWeight: FontWeight.w700);
  TextStyle h3_Style() =>
      TextStyle(fontSize: 14, color: dark, fontWeight: FontWeight.normal);

  // Botton
  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: MyConstant.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
