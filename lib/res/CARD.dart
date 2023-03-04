import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cards extends StatelessWidget {
  final double width;

  final double height;

  final Image image;

  final String Food_Name;

  final String Destination_Time;

  final double Font_Size_of_Food_Name;
  final double Font_Size_of_Destination_Time;
  Cards(
      {required this.width,
      required this.height,
      required this.image,
      required this.Food_Name,
      required this.Destination_Time,
      required this.Font_Size_of_Food_Name,
      required this.Font_Size_of_Destination_Time});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  child: image,
                  height: 150,
                ),
                Text(
                  Food_Name,
                  style: TextStyle(
                      fontSize: Font_Size_of_Food_Name,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  Destination_Time,
                  style: TextStyle(
                      fontSize: Font_Size_of_Destination_Time,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
