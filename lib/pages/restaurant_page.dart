import 'package:flutter/material.dart';
import 'package:food_ninja/logic/food.dart';
import 'package:food_ninja/logic/restaurant.dart';
import 'package:food_ninja/logic/review.dart';
import 'package:food_ninja/res/cards/food_card.dart';
import 'package:food_ninja/res/cards/rating_and_distance.dart';
import 'package:food_ninja/res/cards/review_card.dart';
import 'package:food_ninja/res/hard_code.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_text.dart';
import '../res/status.dart';

class RestaurantPage extends StatelessWidget {//TODO MAKE THIS PAGE NOT HARDCODED by accepting a restaurant object as it's field
  final Restaurant restaurant;
  const RestaurantPage({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Review> reviews = HardCode.reviews;
    List<Food> menu = HardCode.menu;
    BoxDecoration decorationForBar = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child:Center(
          child: Stack (
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: restaurant.restaurantImage.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 400,
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  // physics : const ClampingScrollPhysics(),
                  child: Column(
                    children: <Widget> [
                      Container(height: 300, color: Colors.transparent,),
                      Container(
                        decoration: decorationForBar,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: MyColors.mainOrange0,
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                margin: const EdgeInsets.all(20),
                                height: 7,
                                width: 80,
                              ),
                            ),
                            const Status(),
                            Container(
                              margin: const EdgeInsets.only(left: 30.0,top: 20,bottom: 10),
                              child: Text(restaurant.name, style: MyText.poppins(27, FontWeight.w700),),
                            ),
                            RatingAndDistance(rating: restaurant.rating,),
                            Container(
                              margin: const EdgeInsets.only(left: 30.0,top: 15, right: 30),
                              child: Text(
                                style: MyText.poppins(13, FontWeight.w400),
                                  restaurant.detail
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              child: Row(
                                children: <Widget>[
                                  Text('Popular Menu', style: MyText.poppins(15, FontWeight.w700)),
                                  const SizedBox(width: 175,),
                                  InkWell(
                                    child: const Text(
                                      'View All',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: MyColors.mainOrange1
                                      ),
                                    ),
                                    onTap: () {
                                      // Navigator.pushNamed(context, '/login');
                                      // print('_____________________________________________________________________\t\t\t\tview all\t\t\t____________________________________');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row (
                                children: menu.map((e) => FoodCard(image: e.foodImage, name: e.foodName, cost: e.price,)).toList(),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                child: Text('Testimonials', style: MyText.poppins(15, FontWeight.w700))
                            ),
                            SingleChildScrollView(
                              child: Column (
                                children: reviews.map((e) => ReviewCard(data: e)).toList(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}