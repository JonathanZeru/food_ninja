import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoverText extends StatelessWidget {
  const CoverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 220,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    'Find Your',
                    style: TextStyle(
                      fontFamily: 'BentonSans Bold',
                      fontSize: 50,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                textAlign: TextAlign.start,
                'Favorite Food',
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
