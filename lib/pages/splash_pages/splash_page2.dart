import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ninja/pages/signup_login/signup0.dart';
import 'package:food_ninja/res/buttons/green_button.dart';

class SplashPage2 extends StatefulWidget {
  const SplashPage2({Key? key}) : super(key: key);

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Illustration2.png'),
                  const Text(
                    'Food Ninja is Where Your',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    'Comfort Food Lives',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Enjoy a fast and smooth food delivery at',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    'your doorstep',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 175,
                    height: 60,
                    child: Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GreenButton(
                        txt: 'Next',
                        action: () {
                          Navigator.pushReplacementNamed(context, '/signup0');
                        },
                      ),
                    )),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
