


import 'package:flutter/material.dart';
import 'package:food_ninja/logic/notification_data.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/my_text.dart';

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
