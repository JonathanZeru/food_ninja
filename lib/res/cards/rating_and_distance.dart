

import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_text.dart';

class RatingAndDistance extends StatelessWidget {
  final String rating;
  final distance = '19 km';
  const RatingAndDistance({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(width: 30,),
        const Icon(
          Icons.location_on_outlined,
          color: MyColors.mainGreen0,
          size: 25,
        ),
        const SizedBox(width: 10,),
        Text(distance, style: MyText.hinter(14, FontWeight.w400),),
        const SizedBox(width: 20,),
        const Icon(
          Icons.star_half,
          color: MyColors.mainGreen0,
          size: 28,
        ),
        Text(rating, style: MyText.hinter(14, FontWeight.w400),),
      ],
    );
  }
}


