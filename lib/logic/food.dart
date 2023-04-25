import 'package:flutter/material.dart';
class Food {
  String foodName;
  double price;
  Image foodImage;
  String detail;
  String restaurantID;
  String orders;//TODO: Conflict order and rating
  String rating;
  Food({ required this.foodName, required this.price, required this.foodImage, required this.restaurantID,required this.detail, required this.orders, required this.rating});
}