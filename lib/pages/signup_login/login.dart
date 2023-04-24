import 'package:flutter/material.dart';
import 'package:food_ninja/res/buttons/green_button.dart';
import 'package:food_ninja/res/cards/login_card.dart';
import 'package:food_ninja/res/gradient_text.dart';
import 'package:food_ninja/res/input_fields/input_field_1.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/my_text.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
  var isLoading = false;

//[userLogin] funtion to login
//   Future<String?> userLogin({
//     required final String email,
//     required final String password,
//   }) async {
//     final response = await client.auth.signIn(email: email, password: password);
//     final user = response.data?.user;
//     return user?.id;
//   }

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
            child: SingleChildScrollView(
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
                        // print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
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
                        // print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                        Navigator.pushReplacementNamed(context, '/signup1');
                      }
                    }),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}