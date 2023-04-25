import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: const BoxDecoration(
            color: Color(0xB09BF3B3),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: const Text(
            'Popular',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: MyColors.mainGreen1
            ),
          ),
        ),
        const SizedBox(width: 150,),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xB09BF3B3),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(10),
          child: const ImageIcon(
            AssetImage('assets/icons/locationG.png'),
            color: MyColors.mainGreen0,
            size: 25,
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xB0F39B9B),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(10),
          child: const ImageIcon(
            AssetImage('assets/icons/heart.png'),
            color: Colors.red,
            size: 24,
          ),
        ),
      ],
    );
  }
}
