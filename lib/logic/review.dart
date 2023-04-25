import 'package:flutter/material.dart';
class Review {
  String rid;
  String uid;
  String review;
  int noOfStars;
  String date;
  Image img;//TODO REMOVE These LATER
  String name;
  Review({required this.review, required this.uid, required this.date, required this.noOfStars, required this.rid, required this.name, required this.img});
}