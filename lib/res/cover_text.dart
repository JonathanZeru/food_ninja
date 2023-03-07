import 'package:flutter/material.dart';

class CoverText extends StatelessWidget {
  const CoverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 220,
          child: Column(
            children: [
              Row(
                children:const [
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
              const SizedBox(
                height: 8,
              ),
              const Text(
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
