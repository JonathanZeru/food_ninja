import 'package:flutter/material.dart';
import 'package:food_ninja/pages/signup_login/login.dart';
import 'package:food_ninja/pages/signup_login/signup0.dart';
import 'package:food_ninja/pages/signup_login/signup1.dart';
import 'package:food_ninja/pages/signup_login/signup2.dart';

void main() { runApp( MaterialApp( //TODO REMOVE CONST <--------
    initialRoute: '/signup0',
    routes: {
      // '/': (context) => const CLass_Name(), //change Class name with your page widget and import the widget
      '/signup0': (context) => const Signup0(),
      '/signup1': (context) => const Signup1(),
      '/signup2': (context) => const Signup2(),
      '/login': (context) => const Login(),
    },
  ));
}
/*TODO
    READ ME!!!!!!!!!!!!!!!!!!!!!!!!
     - Put all images in the assets folder.
      if they are general like a logo for example put them in the assets folder directly
      but if they are specific to a page for example the image of the restaurant in the page 'detail product'(figma) put it in a new folder called 'detail_product.
     - Add all custom widgets in the res folder by creating a new dart file for example a custom button would have button.dart file in the res folder
     - Put notes here if you want
*/