
import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/my_text.dart';

class FoodCard extends StatelessWidget {
  final Image image;//TODO Pass image
  final String name;
  final double cost;

  const FoodCard({Key? key, required this.image, required this.name, required this.cost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 20),
        width: 180,
        height: 170,
        decoration: MyOther.inputBox,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: image,
              ),
              Text(
                  name,
                  style: MyText.poppins(15, FontWeight.w500)
              ),
              const SizedBox(height: 5,),
              Text(
                  '$cost \$',
                  style: MyText.hinter(13, FontWeight.w400)
              ),
            ],
          ),
        ),
      ),
    );
  }
}