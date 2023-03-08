import 'package:flutter/material.dart';
import 'package:food_ninja/res/res.dart';

class Buttoned extends StatelessWidget {
  final String title;
  final Decoration decoration;
  final Function()? onPressed;
  final double width;
  final double height;
  final double fontSize;
  const Buttoned(
      {super.key, required this.decoration,
        required this.title,
        required this.onPressed,
        required this.width,
        required this.height,
        required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Container(
          decoration: decoration,
          height: height,
          width: width,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ));
  }
}

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
class Back extends StatelessWidget {
  final Function() action;
  const Back({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: MyColors.mainOrange0,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        icon: const ImageIcon(
          AssetImage('assets/icons/Path.png'),
          color: MyColors.mainOrange1,
        ),
        onPressed: action,
      ),
    );
  }
}
