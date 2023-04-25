import 'package:flutter/material.dart';

class Restaurant{
  double distance;//TODO: Conflict
  String restaurantID;
  String rating;
  String name;
  String detail;
  String location;
  Image restaurantImage;

  Restaurant({required this.name,required this.detail,required this.restaurantID,
    required this.location, required this.restaurantImage, required this.rating, required this.distance});
}