import 'package:flutter/material.dart';
import 'package:food_ninja/res/res.dart';

//TODO SET UP VALIDATORS

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

