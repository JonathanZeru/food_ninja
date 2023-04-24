import 'package:flutter/material.dart';
import 'package:food_ninja/res/buttons/green_button.dart';
import 'package:food_ninja/res/gradient_text.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_text.dart';


class Signup2 extends StatelessWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
              "assets/patterns/Pattern1.png"), //TODO Change it to Pattern1
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Image.asset('assets/done.png'),
              const SizedBox(
                height: 30,
              ),
              GradientText(
                'Congrats!',
                style: MyText.poppins(30, FontWeight.w700),
                gradient: const LinearGradient(colors: [
                  MyColors.mainGreen0,
                  MyColors.mainGreen1,
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Your Profile Is Ready To Use',
                style: MyText.poppins(23, FontWeight.w700),
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                  width: 200,
                  height: 60,
                  child: GreenButton(
                      txt: 'Next',
                      action: () {
                        Navigator.pushReplacementNamed(context, '/login');
                        //TODO GO TO HOME PAGE
                      })),
            ],
          )),
        ),
      ),
    );
  }
}
