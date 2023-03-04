import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class CoverText extends StatelessWidget {
  const CoverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:const <Widget> [
        Text(
          'Find Your Favorite Food',
          style:TextStyle(
            fontFamily: 'BentonSans Bold',
            fontSize: 31,
          ),
        ),
         
      ],
    );
  }
}
