import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class Restaurant extends StatelessWidget {
  const Restaurant({
    super.key,
  });

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
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 20),
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
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Image.asset(
                                  'assets/Menu Photo.png')),
                          Column(
                            children: const [
                              Text(
                                'Herbal Pancake',
                                style: TextStyle(
                                  fontFamily: 'BentonSans Medium',
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Warung Herbal',
                                style: TextStyle(
                                    fontFamily:
                                        'BentonSans Regular',
                                    fontSize: 19,
                                    color: Color.fromARGB(
                                        255, 101, 101, 101)),
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
                  '\$7',
                  style: TextStyle(
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
