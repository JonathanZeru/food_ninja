import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_ninja/logic/notification_data.dart';
import 'package:food_ninja/logic/payment_company_data.dart';
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

class LoginCard extends StatelessWidget { // for google and facebook login
  final String name;
  final String img;
  const LoginCard({Key? key, required this.name, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // <-- Radius
        ),
      ),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 30,
                child: Image.asset(img,)
            ),
            const SizedBox(width: 10,),
            Text(
              name,
              style: MyText.poppins(14, FontWeight.w500),
            )
          ],
        ),
      ),
      onPressed: () {  },
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
class PaymentCompanyCard extends StatelessWidget {
  final PaymentCompanyData data;
  const PaymentCompanyCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: MyOther.inputBox,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset(data.img),
              ),
              const SizedBox(width: 90,),
              SizedBox(
                width: 150,
                child: Text(
                  data.card,
                  style: MyText.poppins(14, FontWeight.w500),
                ),
              )
            ],
          )
      ),
      onTap: (){},//TODO GO TO ADDRES PAGE
    );
  }
}

