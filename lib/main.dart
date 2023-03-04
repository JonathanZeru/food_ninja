import 'package:flutter/material.dart';
import 'package:food_ninja/pages/ExploreMenu.dart';

void main() {
  runApp(MaterialApp(
    //TODO REMOVE CONST <--------
    initialRoute: '/',
    routes: {
      '/': (context) =>
          const ExploreMenu(), //change Class name with your page widget and import the widget
      // '/': (context) => const CLass_Name(), //change Class name with your page widget and import the widget
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