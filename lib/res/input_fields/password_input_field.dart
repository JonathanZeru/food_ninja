import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/my_text.dart';

class PasswordInputField extends StatefulWidget {
  final String txt;
  final TextEditingController cont;
  const PasswordInputField({required this.txt, super.key, required this.cont});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool isObscure = true;
  IconData postfixIcon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyOther.inputBox,
      child: TextFormField(
        controller: widget.cont,
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: widget.txt,
          hintStyle: MyText.hint,
          enabledBorder: MyOther.inputBorder,
          focusedBorder: MyOther.inputBorderActive,
          prefixIcon: const ImageIcon(
            AssetImage('assets/icons/Lock.png'),
            color: Color(0xFF6AD0A5),
            size: 24,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              color: MyColors.border,
              postfixIcon,
            ),
            onPressed: () {
              setState(() {
                if(isObscure) {
                  postfixIcon = Icons.visibility_outlined;
                  isObscure = false;
                } else {
                  postfixIcon = Icons.visibility_off_outlined;
                  isObscure = true;
                }
              });
            },
          ),
        ),
        validator: MyOther.passwordValidator,
      ),
    );
  }
}