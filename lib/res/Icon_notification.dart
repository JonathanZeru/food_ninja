import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconNotification extends StatelessWidget {
  const IconNotification({
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
