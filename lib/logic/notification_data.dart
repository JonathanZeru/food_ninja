import 'package:flutter/material.dart';

class NotificationData {
  late String img; // TODO Maybe make it Image type when dealing with a data base
  late String text;
  late String time;// time when the notification arrived Todo: make it DATE TIME
  NotificationData({required this.img, required this.text, required this.time});
}