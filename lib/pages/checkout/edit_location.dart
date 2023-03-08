import 'package:flutter/material.dart';
import 'package:food_ninja/res/button.dart';
import 'package:food_ninja/res/res.dart';

class EditLocation extends StatefulWidget {
  const EditLocation({Key? key}) : super(key: key);

  @override
  State<EditLocation> createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Payment',
                        style: MyText.poppins(25, FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget> [
                    Container(
                    decoration: MyOther.inputBox,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Text('Order Location', style: MyText.hinter(14, FontWeight.w400),)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset('assets/icons/location.png'),
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                SizedBox(
                                  width: 270,
                                  child: Text(
                                    '8502 Preston Rd. Inglewood, Maine 98380',// Todo make this variable
                                    style: MyText.poppins(15, FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                    Container(
                        decoration: MyOther.inputBox,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Text('Deliver To', style: MyText.hinter(14, FontWeight.w400),)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset('assets/icons/location.png'),
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                SizedBox(
                                  width: 270,
                                  child: Text(
                                    '4517 Washington Ave. Manchester, Kentucky 39495',// Todo make this variable
                                    style: MyText.poppins(15, FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                              child: InkWell(
                                child: const Text(
                                  'set location',
                                  style: MyText.link,
                                ),
                                onTap: () {
                                  // Navigator.pushNamed(context, '/login');
                                  print('_____________________________________________________________________\t\t\t\tlocation\t\t\t____________________________________');
                                },
                              ),
                            )
                          ],
                        )
                    )
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
