import 'package:flutter/material.dart';
import 'package:food_ninja/logic/restaurant.dart';
class Food {
  String foodName;
  double price;
  Image foodImage;
  String detail;
  String restaurantID;

  Food({ required this.foodName, required this.price, required this.foodImage, required this.restaurantID,required this.detail});
}