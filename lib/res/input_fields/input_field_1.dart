import 'package:flutter/material.dart';
import '../my_colors.dart';
import '../my_other.dart';
import '../my_text.dart';

class InputField1 extends StatelessWidget {
  final String txt;
  final String? Function(String?)? valid;
  final TextEditingController cont;
  const InputField1({required this.txt, super.key, this.valid, required this.cont});
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
        ),
        validator: valid,
        // onChanged: ,
      ),
    );
  }
}
