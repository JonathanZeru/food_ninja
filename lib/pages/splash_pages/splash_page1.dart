import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ninja/res/button.dart';

class SplashPage1 extends StatefulWidget {
  const SplashPage1({Key? key}) : super(key: key);

  @override
  State<SplashPage1> createState() => _SplashPage1State();
}

class _SplashPage1State extends State<SplashPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Illustartion.png'),
                  const Text(
                    'Find your Comfort',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    'Food Here',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Here you can find a chef or dish for every',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    'test and color. Enjoy!',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
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
                          Navigator.pushReplacementNamed(
                              context, '/splashPage2');
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
