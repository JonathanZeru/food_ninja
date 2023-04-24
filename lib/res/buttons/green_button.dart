import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';

class GreenButton extends StatelessWidget {
  final String txt;
  final Function() action;
  const GreenButton({required this.txt, required this.action,super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // <-- Radius
        ),
        // backgroundColor: MyColors.mainBlue, // Background Color
      ),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          gradient: LinearGradient(
            colors: [MyColors.mainGreen0, MyColors.mainGreen1],
          ),
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            txt,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}