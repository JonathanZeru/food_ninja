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
        body: Column(
          children: <Widget>[
            SizedBox(
              width: 323,
              height: 240,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CoverText(),
                  Container(
                      margin: const EdgeInsets.only(left: -2),
                      child: const IconNotification()),
                  const Search(),
                  Container(
                      margin: const EdgeInsets.only(right: -2),
                      child: const FilterIcon()),
                ],
              ),
            ),
            SizedBox(
              width: 323,
              height: 240,
            ),
          ],
        ),
      ),
    );
  }
}
