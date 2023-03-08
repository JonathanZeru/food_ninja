import 'package:flutter/material.dart';
import 'package:food_ninja/res/res.dart';

import '../../logic/food.dart';
import '../../res/CARD.dart';
import '../../res/button.dart';

class Checkout extends StatefulWidget {

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
              Back(action: () {  },),
              const SizedBox(height: 20.0),
              Text(
                  'Order details',
                style: MyText.poppins(35, FontWeight.w600),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                children: foods.map((food)=> OrderDetailsCard(
                    food: food)).toList(),
              ),
                  )
              ),
              PriceInfoCard(foods: foods),
            ]
          ),
        )
    );
  }
}
