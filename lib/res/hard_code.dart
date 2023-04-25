

import 'package:flutter/material.dart';
import 'package:food_ninja/logic/food.dart';
import 'package:food_ninja/logic/restaurant.dart';
import 'package:food_ninja/logic/review.dart';
//TODO: REMOVE THIS CLASS
class HardCode{
  static String foodDis = '''Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.

Strowberry
Cream
wheat

Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.''';
  static String resDis = '''Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .''';
  static Food food = Food(
      foodName: 'Rainbow Sandwich Sugarless',
      price: 12,
      foodImage: Image.asset("assets/food/cake.png"),
      restaurantID: 'asfkdhasdha3214',
      detail: foodDis,
      orders: '2000+ Orders',
      rating: '4.8 Rating'
  );
  static Restaurant restaurant = Restaurant(
      restaurantID: 'qwer',
      name: 'Wijie Bar and Resto',
      detail: resDis,
      location: 'SFDASFD',
      restaurantImage: Image.asset("assets/rpm/restaurant.png"),
      rating: '4.8 Rating', distance: 0.0
  );
  static List<Review> reviews = [
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
  static List<Food> menu = [
    Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food0.png'),price: 12,restaurantID: 'qwer',detail: 'asfdasdas',orders: '', rating: ''),
    Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food1.png'),price: 16,restaurantID: 'qwer',detail: 'asfdasdas',orders: '', rating: ''),
    Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food0.png'),price: 14,restaurantID: 'qwer',detail: 'asfdasdas',orders: '', rating: ''),
    Food(foodName: 'Spacy fresh crab', foodImage: Image.asset('assets/food/food1.png'),price: 12,restaurantID: 'qwer',detail: 'asfdasdas',orders: '', rating: ''),
  ];

}