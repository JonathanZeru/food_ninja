import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String headerText;
  String subText;
  Image image;

  FoodCard({required this.image,required this.headerText,required this.subText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: const Color(0x125A6CEA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Container(
        padding: const EdgeInsets.only(top:35.0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x125A6CEA),
              blurRadius: 50,
              blurStyle: BlurStyle.outer,
            )
          ]
        ),
        child: Column(
          children: [
            Container(
              child:image,
            ),
            Text(
              headerText,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              )
            ),
            const SizedBox(height: 10.0),
            Text(
              subText,
              style: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 12.0,
              )
            ),
          ],
        ),
      )
    );
  }
}
