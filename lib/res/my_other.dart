import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'my_colors.dart';
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