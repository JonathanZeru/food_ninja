import 'package:flutter/material.dart';
import 'package:food_ninja/logic/food.dart';
import 'package:food_ninja/logic/review.dart';
import 'package:food_ninja/res/res.dart';

import '../logic/notification_data.dart';
import '../res/CARD.dart';

class RestaurantPage extends StatelessWidget {//TODO MAKE THIS PAGE NOT HARDCODED by accepting a restaurant object as it's field
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Food> menu = [
      Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food0.png'),price: 12,restaurantID: 'qwer',detail: 'asfdasdas'),
      Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food1.png'),price: 16,restaurantID: 'qwer',detail: 'asfdasdas'),
      Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food0.png'),price: 14,restaurantID: 'qwer',detail: 'asfdasdas'),
      Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food1.png'),price: 12,restaurantID: 'qwer',detail: 'asfdasdas'),
    ];
    List<Review> reviews = [
      Review(
          review: 'This Is great, So delicious! You Must Here, With Your family . . ', uid: '1',
          date: '12 April 2021', noOfStars: 5, rid: 'r1', name: 'Dianne Russell', img: Image.asset('assets/people/person0.png')),
      Review(
          review: 'This Is great, So delicious! You Must Here, With Your family . . ', uid: '1',
          date: '21 September 2021', noOfStars: 4, rid: 'r1', name: 'Dianne Russell', img: Image.asset('assets/people/person0.png')),
      Review(
          review: 'This Is great, So delicious! You Must Here, With Your family . . ', uid: '1',
          date: '12 April 2021', noOfStars: 2, rid: 'r1', name: 'Dianne Russell', img: Image.asset('assets/people/person0.png')),
    ];
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/rpm/restaurant.png"), //TODO Change it to Pattern1
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
                              child: Text('Wijie Bar and Resto', style: MyText.poppins(27, FontWeight.w700),),
                            ),
                            const RatingAndDistance(),
                            Container(
                              margin: const EdgeInsets.only(left: 30.0,top: 15, right: 30),
                              child: Text(
                                style: MyText.poppins(13, FontWeight.w400),
                                'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .'
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
                                      Navigator.pushNamed(context, '/login');
                                      print('_____________________________________________________________________\t\t\t\tmyUser.firstName\t\t\t____________________________________');
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
class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: const BoxDecoration(
            color: Color(0xB09BF3B3),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: const Text(
            'Popular',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: MyColors.mainGreen1
            ),
          ),
        ),
        const SizedBox(width: 150,),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xB09BF3B3),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(10),
          child: const ImageIcon(
            AssetImage('assets/icons/locationG.png'),
            color: MyColors.mainGreen0,
            size: 25,
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xB0F39B9B),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(10),
          child: const ImageIcon(
            AssetImage('assets/icons/heart.png'),
            color: Colors.red,
            size: 24,
          ),
        ),
      ],
    );
  }
}
class RatingAndDistance extends StatelessWidget {
  const RatingAndDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(width: 30,),
        const Icon(
          Icons.location_on_outlined,
          color: MyColors.mainGreen0,
          size: 25,
        ),
        const SizedBox(width: 10,),
        Text('19 Km', style: MyText.hinter(14, FontWeight.w400),),
        const SizedBox(width: 20,),
        const Icon(
          Icons.star_half,
          color: MyColors.mainGreen0,
          size: 28,
        ),
        Text('4.8 Rating', style: MyText.hinter(14, FontWeight.w400),),
      ],
    );
  }
}


