import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_ninja/pages/splash_pages/splash_page1.dart';

import '../../res/gradient_text.dart';
import '../../res/my_colors.dart';

void main() async {
  runApp(const MaterialApp(
    home: SplashPage0(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashPage0 extends StatefulWidget {
  const SplashPage0({super.key});

  @override
  State<SplashPage0> createState() => _SplashPage0State();
}

class _SplashPage0State extends State<SplashPage0> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SplashPage1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/patterns/Pattern.png"),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Logo.png'),
                const GradientText(
                  'FoodNinja',
                  style: TextStyle(
                    fontFamily: 'Viga',
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                  gradient: LinearGradient(colors: [
                    MyColors.mainGreen0,
                    MyColors.mainGreen1,
                  ]),
                ),
                const Text(
                  'Deliver Favorite Food',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
