import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_ninja/pages/Checkout/confirm_order.dart';
import 'package:food_ninja/res/res.dart';

import '../logic/food.dart';



class FoodCard extends StatelessWidget {
  String headerText;
  String subText;
  Image image;

  FoodCard({required this.image,required this.headerText,required this.subText});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10.0,
        shadowColor: const Color(0x125A6CEA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Container(
          padding: const EdgeInsets.only(top:35.0),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x125A6CEA),
                  blurRadius: 50,
                  blurStyle: BlurStyle.outer,
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                child:image,
              ),
              Text(
                  headerText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  )
              ),
              const SizedBox(height: 10.0),
              Text(
                  subText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12.0,
                  )
              ),
            ],
          ),
        )
    );
  }
}

class OrderDetailsCard extends StatefulWidget {
  // Image image;
  // String header;
  // String detail;
  // final double price;

  Food food;
  // OrderDetailsCard({super.key, required this.image, required this.header,
  //   required this.detail, required this.price });
  OrderDetailsCard({required this.food});
  @override
  State<OrderDetailsCard> createState() => _OrderDetailsCardState();
}

class _OrderDetailsCardState extends State<OrderDetailsCard> {
  int quantity = 1;
  //_PriceInfoCardState price = _PriceInfoCardState() ;
  @override
  Widget build(BuildContext context) {

    int addQuantity(){
      return quantity += 1;
    }
    int deductQuantity(){
      if(quantity>0) {
        return quantity -= 1;
      } else {
        return quantity = 0;
      }
    }

    return Card(
      elevation: 10.0,
      shadowColor: const Color(0x125A6CEA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: widget.food.foodImage,
          ),
          Column(
            children: [
              Text(
                widget.food.foodName,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: MyColors.mainBlack,
                ),
              ),
              Text(
                widget.food.detail,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: MyColors.hint.withOpacity(0.5),
                ),
              ),
              GradientText(
                  '\$' + widget.food.price.toString(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                  ),
                  gradient: const LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,])
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 30.0,
                  height: 30.0,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      MyColors.mainGreen0.withOpacity(0.25),
                      MyColors.mainGreen1.withOpacity(0.25),
                    ]
                  )
                ),
                  child: IconButton(
                      onPressed: (){
                        setState(() {
                          quantity = deductQuantity();
                          //price.quantity = price.getQuantity();
                        });

                      },
                      icon: const Icon(
                          Icons.remove,
                        color: MyColors.mainGreen1,
                      ),
                    iconSize: 15.0,

                  )
              ),
              const SizedBox(width:10.0),
               Text(
                quantity.toString(),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(width:10.0),
              Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            MyColors.mainGreen0,
                            MyColors.mainGreen1,
                          ]
                      )
                  ),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      quantity = addQuantity();
                    });

                  },
                  icon: const Icon(
                      Icons.add,
                      color: Colors.white
                  ),
                  iconSize: 15.0,
                )
              )
            ],
          )
        ],
      )
    );
  }
}

class PriceInfoCard extends StatefulWidget {
  List<Food> foods;

  PriceInfoCard({required this.foods});

  @override
  State<PriceInfoCard> createState() => _PriceInfoCardState();
}

class _PriceInfoCardState extends State<PriceInfoCard> {
  // _OrderDetailsCardState orderDetail = _OrderDetailsCardState();
  // late int quantity;
  // int getQuantity(){
  //   setState(() {
  //     quantity = orderDetail.quantity;
  //   });
  //   return quantity;
  // }

  double subtotalCalculator(){
    double subtotal = 0;
      //quantity = getQuantity();
      widget.foods.forEach((food)=>{
        subtotal += food.price
      });
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = subtotalCalculator();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
      decoration:  BoxDecoration(
          image: const DecorationImage(image: AssetImage(
              'assets/Pattern.png',
          )
          ,fit: BoxFit.fill
          ),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                MyColors.mainGreen0.withOpacity(0.75),
                MyColors.mainGreen1.withOpacity(0.75),
              ]
          ),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                      'Sub-Total',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Delivery Charge',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Discount',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '$subtotal \$' ,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text(
                      '10.0 \$',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text(
                      '20.0 \$',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                      ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '${subtotal + 20 + 10} \$',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            width: 350,
            height:50,
            child: InkWell(
              onTap: (){
                Navigator. push(
                    context,
                    MaterialPageRoute(builder: (context) => ConfirmOrder()));
              },
              child: const Center(
                child: GradientText(
                    'Place My Order',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                    gradient: LinearGradient(colors: [MyColors.mainGreen0, MyColors.mainGreen1,])
                )
              ),
            ),
          )
        ],
      )
    );
  }
}


