import 'package:flutter/material.dart';
import 'package:food_ninja/res/cover_text.dart';
import 'package:food_ninja/res/Icon_notification.dart';
import 'package:food_ninja/res/search.dart';
import 'package:food_ninja/res/filter_icon.dart';
import 'package:food_ninja/res/menu.dart';
import 'package:food_ninja/res/Header.dart';
class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  List<Menu> menu = [
    Menu(
        img: 'assets/Menu Photo.png',
        restaurantName: 'Warung Herbal',
        foodName: 'Herbal Pancake',
        price: '\$7'),
    Menu(
        img: 'assets/Photo Menu.png',
        restaurantName: 'Wijie Resto',
        foodName: 'Fruit Salad',
        price: '\$5'),
    Menu(
        img: 'assets/Photo Menu2.png',
        restaurantName: 'Noodle Home',
        foodName: 'Green Noodle',
        price: '\$15'),
  ];
  Widget MenuTemplate(menu) {
    return Restaurant(
      menu: menu,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          //this is the code for the background image of the page
          //use a container first then use the decoration property
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Onboarding.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: 340,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  Column(
                    children: <Widget>[
                      const Header(),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: const [
                          // ignore: todo
                          //TODO make the search widget padding bigger.
                          Search(),
                          FilterIcon(),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: const Text(
                          'Popular Menu',
                          style: TextStyle(
                            fontFamily: 'BentonSans Bold',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Column(
                        children:
                            menu.map((menu) => MenuTemplate(menu)).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class Restaurant extends StatelessWidget {
  final Menu menu;
  const Restaurant({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 20,
      shadowColor: Colors.transparent,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.asset(menu.img)),
                          Column(
                            children: [
                              Text(
                                menu.foodName,
                                style: const TextStyle(
                                  fontFamily: 'BentonSans Medium',
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                menu.restaurantName,
                                style: const TextStyle(
                                    fontFamily: 'BentonSans Regular',
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 101, 101, 101)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Text(
                  menu.price,
                  style: const TextStyle(
                    fontFamily: 'BentonSans Bold',
                    fontSize: 26,
                    color: Color.fromARGB(255, 254, 173, 29),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
