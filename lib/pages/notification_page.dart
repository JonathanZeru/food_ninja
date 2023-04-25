import 'package:flutter/material.dart';
import 'package:food_ninja/logic/notification_data.dart';
import 'package:food_ninja/res/buttons/back_button_0.dart';
import 'package:food_ninja/res/cards/notification_card.dart';
import 'package:food_ninja/res/my_text.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationData> notifications = [
    NotificationData(img: 'assets/notification_icons/checked.png', text: 'Your order has been taken by the driver',  time: 'Recently',),
    NotificationData(img: 'assets/notification_icons/money.png', text: 'Topup for \$100 was successful',  time: '10.00 Am',),
    NotificationData(img: 'assets/notification_icons/x-button.png', text: 'Your order has been canceled',  time: '22 Juny 2021',),
    NotificationData(img: 'assets/notification_icons/checked.png', text: 'Your order has been taken by the driver',  time: 'Recently',),
    NotificationData(img: 'assets/notification_icons/money.png', text: 'Topup for \$100 was successful',  time: '10.00 Am',),
    NotificationData(img: 'assets/notification_icons/x-button.png', text: 'Your order has been canceled',  time: '22 Juny 2021',),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/patterns/Pattern.png"), //TODO Change it to Pattern1
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButton0(
                        action: () {
                          Navigator.pushReplacementNamed(context, '/signup0');
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Notification',
                        style: MyText.poppins(25, FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Column (
                        children: notifications.map((e) => NotificationCard(data: e)).toList(),
                      ),
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
