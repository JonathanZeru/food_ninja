import 'package:flutter/material.dart';
import 'package:food_ninja/res/button.dart';
import 'package:food_ninja/res/input_fields.dart';
import 'package:food_ninja/res/res.dart';

//TODO: connect to supa base

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/patterns/Pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/Logo.png', height: 150,),
                const GradientText(
                  'FoodNinja',
                  style: TextStyle(
                    fontFamily: 'Viga',
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                  gradient: LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,]),
                ),
                const Text(
                  'Deliver Favorite Food',
                  style:  TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50,),
                Text(
                  'Login To Your Account',
                  style: MyText.poppins(20, FontWeight.w700),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        InputField1(txt: 'Email', cont: _email, valid: MyOther.emailValidator,),
                        const SizedBox(height: 20,),
                        InputField1(txt: 'Password', cont: _password, valid: MyOther.passwordValidator,),
                        const SizedBox(height: 20,),
                        Text(
                          'Or Continue With',
                          style: MyText.poppins(12, FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LoginCard(name: 'Facebook', img: 'assets/company/facebook.png'),
                    LoginCard(name: 'Google', img: 'assets/company/google.png'),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                  child: InkWell(
                    child: const Text(
                      'Forgot Your Password?',
                      style: MyText.link,
                    ),
                    onTap: () {
                      print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                    },
                  ),
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: 175,
                  height: 60,
                  child: GreenButton(txt:'Login', action:  () {
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm) {
                      //TODO: store input data on an object
                      print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                      // Navigator.pushReplacementNamed(context, '/signup1');
                    }
                  }),
                ),
              ],
            )
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  final String name;
  final String img;
  const LoginCard({Key? key, required this.name, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // <-- Radius
        ),
      ),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
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
        ),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 30,
                child: Image.asset(img,)
            ),
            const SizedBox(width: 10,),
            Text(
              name,
              style: MyText.poppins(14, FontWeight.w500),
            )
            ],
          ),
       ),
      onPressed: () {  },
    );
  }
}

