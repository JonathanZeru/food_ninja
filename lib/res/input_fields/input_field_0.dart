import 'package:flutter/material.dart';
import '../my_colors.dart';
import '../my_other.dart';
import '../my_text.dart';

class InputField0 extends StatelessWidget {
  final String txt;
  final String prefixIcon;
  final String? Function(String?)? valid;
  final TextEditingController cont;
  const InputField0({required this.txt, required this.prefixIcon, super.key, this.valid, required this.cont});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyOther.inputBox,
      child: TextFormField(
        controller: cont,
        decoration: InputDecoration(
          hintText: txt,
          hintStyle: MyText.hint,
          enabledBorder: MyOther.inputBorder,
          focusedBorder: MyOther.inputBorderActive,
          prefixIcon: ImageIcon(
            AssetImage(prefixIcon),
            color: MyColors.mainGreen1,
            size: 24,
          ),
        ),
        validator: valid,
        // onChanged: ,
      ),
    );
  }
}
