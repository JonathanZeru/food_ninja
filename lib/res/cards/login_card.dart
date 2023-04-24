import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_text.dart';

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
