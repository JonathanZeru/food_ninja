

import 'package:food_ninja/logic/review.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/res/gradient_text.dart';
import 'package:food_ninja/res/my_colors.dart';
import 'package:food_ninja/res/my_other.dart';
import 'package:food_ninja/res/my_text.dart';

class ReviewCard extends StatelessWidget {
  final Review data;
  const ReviewCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: MyOther.inputBox,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
              width: 80,
              child: data.img,//TODO use uid to get image
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              data.name,
                              style: MyText.poppins(14, FontWeight.w500),
                            ),
                          ),
                          Text(
                            data.date,
                            style: MyText.hinter(14, FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xB09BF3B3),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: MyColors.mainGreen0,
                            size: 24,
                          ),
                          GradientText(
                            data.noOfStars.toString(),
                            style: MyText.poppins(16, FontWeight.w700),
                            gradient: const LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,],),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 260,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(data.review, style: MyText.poppins(12, FontWeight.w400),),
                )

              ],
            )
          ],
        )
    );
  }
}
