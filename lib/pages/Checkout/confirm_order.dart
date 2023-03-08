import 'package:flutter/material.dart';
import 'package:food_ninja/res/res.dart';

import '../../logic/food.dart';
import '../../res/CARD.dart';
import '../../res/button.dart';
import 'checkout.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {

  List<Food> foods = [
    Food(foodName: 'Spacy fresh crab',price: 35.0,
        foodImage: Image.asset('assets/healthy.png'),
        restaurantID: 'Danny\'s', detail: 'Waroenk kita'),
    Food(foodName: 'Spacy fresh crab',price: 35.0,
        foodImage: Image.asset('assets/healthy.png'),
        restaurantID: 'Danny\'s', detail: 'Waroenk kita'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
          decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/patterns/Pattern1.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Back(action: () {
                  Navigator. push(
                      context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },),
                const SizedBox(height: 20.0),
                Text(
                  'Order details',
                  style: MyText.poppins(35, FontWeight.w600),
                ),
        Expanded(child: Column(
          children: [
            Card(
                elevation: 10.0,
                shadowColor: const Color(0x125A6CEA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Text(
                              'Deliver to',
                              style: TextStyle(
                                color: MyColors.hint.withOpacity(0.25),
                                fontFamily: 'Poppins',
                              )
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              //TODO ADD THE ADDRESS CLASS HERE USING THE NAVIGATOR REFERENCE IT FROM BACK WIDGET
                            },
                            child: const GradientText(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                gradient: LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,])
                            )
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children:[
                          Image.asset('assets/icons/Icon Location.png'),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(
                                '4517 Washington Ave. ',
                                style: MyText.poppins(18, FontWeight.w600),
                              ),
                              Text(
                                    'Manchester, Kentucky 39495',
                                style: MyText.poppins(18, FontWeight.w600),
                              ),
                            ]
                          ),

                        ]
                      ),
                    ),
                  ],
                )
            ),
            Card(
                elevation: 10.0,
                shadowColor: const Color(0x125A6CEA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Text(
                              'Payment Method',
                              style: TextStyle(
                                color: MyColors.hint.withOpacity(0.25),
                                fontFamily: 'Poppins',
                              ),
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              //TODO ADD THE PAYMENT CLASS HERE USING THE NAVIGATOR REFERENCE IT FROM BACK WIDGET
                            },
                            child: const GradientText(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                gradient: LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,])
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 30,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/paypal Logo.png'),
                          const Text(
                            '2121 6352 8465 ****',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: MyColors.hint
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ],
        )),
                PriceInfoCard(foods: foods),
              ]
          ),
        )
    );
  }
}
