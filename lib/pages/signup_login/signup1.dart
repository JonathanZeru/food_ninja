import 'package:flutter/material.dart';
import 'package:food_ninja/res/button.dart';
import 'package:food_ninja/res/input_fields.dart';
import 'package:food_ninja/res/res.dart';

//TODO: connect to supa base

class Signup1 extends StatefulWidget {
  const Signup1({Key? key}) : super(key: key);

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/patterns/Pattern.png"), //TODO Change it to Pattern1
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Back(
                        action: () {
                          Navigator.pushReplacementNamed(context, '/signup0');
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Fill in your bio to get started',
                        style: MyText.poppins(25, FontWeight.w700),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Text(
                            'This data will be displayed in your account profile for security',
                          style: MyText.poppins(15, FontWeight.w400),
                        ),
                      ),

                    ],
                  ),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        InputField1(txt: 'First Name', cont: _firstName, valid: MyOther.requiredValidator,),
                        const SizedBox(height: 20,),
                        InputField1(txt: 'Last Name', cont: _lastName, valid: MyOther.requiredValidator,),
                        const SizedBox(height: 20,),
                        PhoneInputField(cont: _phoneNumber),
                        const SizedBox(height: 120,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 60,
                  child: GreenButton(txt:'Next', action:  () {
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm) {
                      //TODO: store input data on an object
                      print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
                      Navigator.pushReplacementNamed(context, '/signup2');
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
