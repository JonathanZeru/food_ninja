import 'package:flutter/material.dart';
import 'package:food_ninja/pages/food_page.dart';
import 'package:food_ninja/pages/notification_page.dart';
import 'package:food_ninja/pages/restaurant_page.dart';
import 'package:food_ninja/pages/signup_login/login.dart';
import 'package:food_ninja/pages/signup_login/signup0.dart';
import 'package:food_ninja/pages/signup_login/signup1.dart';
import 'package:food_ninja/res/hard_code.dart';
import 'package:food_ninja/test_main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'pages/signup_login/signup2.dart';

void main() {
  // Future<void> main() async {
  //   await Supabase.initialize(
  //     url: 'https://ohwrasnbhiymaejdwgzp.supabase.co',
  //     anonKey:
  //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9od3Jhc25iaGl5bWFlamR3Z3pwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzc5MzAwOTUsImV4cCI6MTk5MzUwNjA5NX0.1YDUDxiSQRkxLMpulMPS8t2vA0EcZX03_M0lrLlz3kw',
  //   );
  // }
  runApp(MaterialApp(
    initialRoute: '/',//TODO : ADD ROUTE
    routes: {
      '/': (context) => FoodPage(food: HardCode.food), //change Class name with your page widget and import the widget
      // '/splash': (context) => const SplashPage0(),
      // '/splashPage1': (context) => const SplashPage1(),
      // '/splashPage2': (context) => const SplashPage2(),
      '/signup0': (context) => const Signup0(),
      '/signup1': (context) => const Signup1(),
      '/signup2': (context) => const Signup2(),
      '/login': (context) => const Login(),
      // '/Checkout': (context) => Checkout(),
      // '/ConfirmOrder': (context) => ConfirmOrder(),
      '/notification_page': (context) => const NotificationPage(),
      // '/edit_payment': (context) => const EditPayments(),
      // '/edit_location': (context) => const EditLocation(),
      '/restaurant_page': (context) => RestaurantPage(restaurant: HardCode.restaurant),
      '/food_page': (context) => FoodPage(food: HardCode.food),
      // '/ExploreMenu': (context) => const ExploreMenu(),
      // '/ExploreRestaurantWIthFilter': (context) => const ExploreRestaurantWIthFilter(),
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

