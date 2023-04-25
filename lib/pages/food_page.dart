import 'package:flutter/material.dart';
import 'package:food_ninja/logic/food.dart';
import 'package:food_ninja/logic/review.dart';
import 'package:food_ninja/res/buttons/green_button.dart';
import 'package:food_ninja/res/cards/review_card.dart';
import 'package:food_ninja/res/hard_code.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_text.dart';
import '../res/status.dart';

class FoodPage extends StatelessWidget {//TODO MAKE THIS PAGE NOT HARDCODED by accepting a food object as it's field
  final Food food;
  const FoodPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Review> reviews = HardCode.reviews;

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
                          image: food.foodImage.image,
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
                                  child: Text(food.foodName, style: MyText.poppins(27, FontWeight.w700),),
                                ),
                                RatingAndOrders(rating: food.rating,orders: food.orders),
                                Container(
                                    margin: const EdgeInsets.only(left: 30.0,top: 15, right: 30),
                                    child: Text(
                                      style: MyText.poppins(13, FontWeight.w400),
                                      food.detail
                                    )
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
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    left: 20,
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: GreenButton(
                        txt: 'Add To Cart',
                        action:() {}
                      ),
                    )
                  )
                ],
              ),
            )
        )
    );
  }
}
class RatingAndOrders extends StatelessWidget {
  final String rating;
  final String orders;
  const RatingAndOrders({Key? key, required this.rating, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(width: 30,),
        const Icon(
          Icons.star_half,
          color: MyColors.mainGreen0,
          size: 28,
        ),
        Text(rating, style: MyText.hinter(14, FontWeight.w400),),
        const Icon(
          Icons.shopping_bag_outlined,
          color: MyColors.mainGreen0,
          size: 25,
        ),
        Text(orders, style: MyText.hinter(14, FontWeight.w400),),
      ],
    );
  }
}


