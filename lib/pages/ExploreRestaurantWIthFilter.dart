import 'package:flutter/material.dart';
import 'package:food_ninja/res/cover_text.dart';
import 'package:food_ninja/res/Icon_notification.dart';
import 'package:food_ninja/res/search.dart';
import 'package:food_ninja/res/filter_icon.dart';
import 'package:food_ninja/res/menu.dart';
import 'package:food_ninja/res/Header.dart';
class ExploreRestaurantWIthFilter extends StatefulWidget {
  const ExploreRestaurantWIthFilter({super.key});

  @override
  State<ExploreRestaurantWIthFilter> createState() =>
      _ExploreRestaurantWIthFilterState();
}

class _ExploreRestaurantWIthFilterState
    extends State<ExploreRestaurantWIthFilter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: 340,
          child:Column(
            children: [
              SizedBox(),
              Container(),
            ],
          ),
        ),
      )
      );
  }
}
