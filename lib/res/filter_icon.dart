import 'package:flutter/material.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 40,
        onPressed: () => {},
        icon: Image.asset('assets/Filter Icon.png'));
  }
}
