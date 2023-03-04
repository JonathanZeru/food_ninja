import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_ninja/res/cover_text.dart';
import 'package:food_ninja/res/Icon_notification.dart';
import 'package:food_ninja/res/search.dart';
import 'package:food_ninja/res/filter_icon.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Onboarding.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 323,
                  height: 240,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            CoverText(),
                            IconNotification(),
                          ],
                        ),
                        Row(
                          children: const [
                            Search(),
                            FilterIcon(),
                          ],
                        ),
                        const Text(
                          'Popular Menu',
                          style: TextStyle(
                            fontFamily: 'BentonSans Bold',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 323,
                  height: 240,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
