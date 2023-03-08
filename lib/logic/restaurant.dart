import 'package:flutter/material.dart';

class Restaurant{
  double distance;
  String restaurantID;
  String name;
  String detail;
  bool isFavourite;
  String location;
  Image restaurantImage;

  Restaurant({required this.distance,required this.name,required this.detail,required this.restaurantID,
    required this.isFavourite,required this.location, required this.restaurantImage});
}