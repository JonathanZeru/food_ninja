import 'package:flutter/material.dart';
import '../my_colors.dart';
import '../my_other.dart';
import '../my_text.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController cont;
  const PhoneInputField({super.key, required this.cont});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyOther.inputBox,
      child: TextFormField(
        controller: cont,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: 'Mobile Number',
          hintStyle: MyText.hint,
          enabledBorder: MyOther.inputBorder,
          focusedBorder: MyOther.inputBorderActive,
        ),
        validator: MyOther.requiredValidator,
      ),
    );
  }
}

