import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_ninja/logic/notification_data.dart';
import 'package:food_ninja/res/res.dart';

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

class NotificationCard extends StatelessWidget {
  final NotificationData data;
  const NotificationCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyOther.inputBox,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Image.asset(data.img),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 250,
                child: Text(
                  data.text,
                  style: MyText.poppins(14, FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                data.time,
                style: MyText.hinter(14, FontWeight.w400),
              ),
            ],
          )
        ],
      )
    );
  }
}

