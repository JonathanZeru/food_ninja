import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MyColors {
  static const Color mainBlack =  Color(0xFF09051C);
  static const Color hint = Color(0xFF3B3B3B);
  static const Color mainGreen0 = Color(0xFF53E88B);
  static const Color mainGreen1 = Color(0xFF15BE77);
  static const Color mainOrange0 = Color(0xFFFFCD96);
  static const Color mainOrange1 = Color(0xFFDA6317);
  static const Color border = Color(0xFFD3D1D1);
}
class MyText {
  static TextStyle poppins(double? size, FontWeight weight){
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      color: MyColors.mainBlack,
      fontFamily: 'Poppins',
    );
  }
  static TextStyle hinter(double? size, FontWeight weight){
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      color: MyColors.border,
      fontFamily: 'Poppins',
    );
  }
  static const TextStyle hint = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: MyColors.border
  );
  static const TextStyle link = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: MyColors.mainGreen0,
    decoration: TextDecoration.underline,
    fontFamily: 'Poppins',
  );
}

class MyOther{
  static OutlineInputBorder inputBorder = OutlineInputBorder(
      borderSide:  const BorderSide(color: MyColors.border ),
      borderRadius: BorderRadius.circular(15)
  );
  static OutlineInputBorder inputBorderActive = OutlineInputBorder(
      borderSide:  const BorderSide(color: MyColors.mainGreen1 ),
      borderRadius: BorderRadius.circular(15)
  );
  //Used validators from a dependence form_field_validator: ^1.1.0
  static final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'Password is required'),
      MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'Passwords must have at least one special character')
  ]);
  static final requiredValidator = RequiredValidator(errorText: 'This field is required');
  static final emailValidator = MultiValidator([
      RequiredValidator(errorText: 'Email is required'),
      EmailValidator(errorText: 'Enter a valid email address')
  ]);
  static const mainButtonDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(80.0)),
      gradient: LinearGradient(
        colors: [MyColors.mainGreen0, MyColors.mainGreen1,],
      ),
    );
  static final inputBox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {super.key,
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
