import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Buttoned extends StatelessWidget {
  final String title;
  final Decoration decoration;
  final Function()? onPressed;
  final double width;
  final double height;
  final double font_Size;
  Buttoned(
      {required this.decoration,
      required this.title,
      required this.onPressed,
      required this.width,
      required this.height,
      required this.font_Size});
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
              style: TextStyle(fontSize: font_Size),
            ),
          ),
        ));
  }
}
