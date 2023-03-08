import 'package:flutter/material.dart';
import 'package:food_ninja/pages/checkout/edit_location.dart';
import 'package:food_ninja/pages/checkout/edit_payments.dart';
import 'package:food_ninja/pages/notification_page.dart';
import 'package:food_ninja/pages/restaurant_page.dart';
import 'package:food_ninja/pages/signup_login/login.dart';
import 'package:food_ninja/pages/signup_login/signup0.dart';
import 'package:food_ninja/pages/signup_login/signup1.dart';
import 'package:food_ninja/pages/signup_login/signup2.dart';
import 'package:food_ninja/pages/ExploreMenu.dart';
import 'package:food_ninja/pages/ExploreRestaurantWIthFilter.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/restaurant_page',
    routes: {
      // '/': (context) => const CLass_Name(), //change Class name with your page widget and import the widget
      '/signup0': (context) => const Signup0(),
      '/signup1': (context) => const Signup1(),
      '/signup2': (context) => const Signup2(),
      '/login': (context) => const Login(),
      '/notification_page': (context) => const NotificationPage(),
      '/edit_payment': (context) => const EditPayments(),
      '/edit_location': (context) => const EditLocation(),
      '/restaurant_page': (context) => const RestaurantPage(),
      '/ExploreMenu': (context) => const ExploreMenu(),
      '/ExploreRestaurantWIthFilter': (context) => const ExploreRestaurantWIthFilter(),
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
     - I have add fonts folder try adding the fonts in the figma into this folder(
      and flutter supports only ttf, ttc and otf files)
*/
