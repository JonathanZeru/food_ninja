import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';

class BackButton0 extends StatelessWidget {
  final Function() action;
  const BackButton0({Key? key, required this.action}) : super(key: key);

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