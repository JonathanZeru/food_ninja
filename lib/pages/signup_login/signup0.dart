import 'package:flutter/material.dart';
import 'package:food_ninja/res/gradient_text.dart';
import 'package:food_ninja/res/buttons/green_button.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/input_fields/password_input_field.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../res/input_fields/input_field_0.dart';
import '../../res/my_text.dart';

//TODO: connect to supa base

class Signup0 extends StatefulWidget {
  const Signup0({Key? key}) : super(key: key);

  @override
  State<Signup0> createState() => _Signup0State();
}

class _Signup0State extends State<Signup0> {
  final formKey = GlobalKey<FormState>();
  // final TextEditingController _email = TextEditingController();
  // final TextEditingController _password = TextEditingController();

  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  // bool _isLoading = true;
  // Future<void> _getProfile() async {
  //   final userId = client.auth.currentUser!.id;
  //   final data = await client
  //       .from('food_ninja_user')
  //       .select()
  //       .eq('name', userId)
  //       .single() as Map;
  //   _userNameController.text = (data['name'] ?? '') as String;
  // }
  //
  // Future<bool> createUser(
  //     {required final String email, required final String password}) async {
  //   final response = await client.auth.signUp(email, password);
  //
  //   final error = response.error;
  //   if (error == null) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

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
                  'Sign Up For Free',
                  style: MyText.poppins(20, FontWeight.w700),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        InputField0(txt: 'Username', prefixIcon: 'assets/icons/Profile.png' , cont: _userName, valid: MyOther.requiredValidator,),
                        const SizedBox(height: 20,),
                        InputField0(txt: 'Email', prefixIcon: 'assets/icons/Message.png' , cont: _email, valid: MyOther.emailValidator,),
                        const SizedBox(height: 20,),
                        PasswordInputField(txt: 'Password', cont: _password,),
                        const SizedBox(height: 20,),
                        Row(
                          children: <Widget>[
                            InkWell(
                              child: const Icon(Icons.check_circle, color: MyColors.mainGreen0, size: 24,),
                              onTap: () {
                                //TODO: Check uncheck
                              },
                            ),
                            const SizedBox(width: 10,),
                            const Text('Keep Me Signed In')
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            InkWell(
                              child: const Icon(Icons.check_circle, color: MyColors.mainGreen0, size: 24,),
                              onTap: () {
                                //TODO: Check uncheck
                              },
                            ),
                            const SizedBox(width: 10,),
                            const Text('Email Me About Special Pricing')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 225,
                  height: 60,
                  child: GreenButton(txt:'Create Account', action:  () {
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm) {
                      //TODO: store input data on an object
                      // print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                      Navigator.pushNamed(context, '/signup1');//TODO USE .push
                    }
                  }),
                ),
                const SizedBox(height: 25,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                  child: InkWell(
                    child: const Text(
                      'already have an account?',
                      style: MyText.link,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                      // print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                    },
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
