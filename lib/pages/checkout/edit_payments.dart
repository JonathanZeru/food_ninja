import 'package:flutter/material.dart';
import 'package:food_ninja/logic/payment_company_data.dart';
import 'package:food_ninja/res/CARD.dart';
import 'package:food_ninja/res/button.dart';
import 'package:food_ninja/res/res.dart';

class EditPayments extends StatefulWidget {
  const EditPayments({Key? key}) : super(key: key);

  @override
  State<EditPayments> createState() => _EditPaymentsState();
}

class _EditPaymentsState extends State<EditPayments> {
  List<PaymentCompanyData> companies = [
    PaymentCompanyData(img: 'assets/company/paypal.png', card: '2121 6352 8465 ****', ),
    PaymentCompanyData(img: 'assets/company/visa.png', card: '2121 6352 8465 ****', ),
    PaymentCompanyData(img: 'assets/company/payoneer.png', card: '2121 6352 8465 ****', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/patterns/Pattern.png"), //TODO Change it to Pattern1
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Back(
                        action: () {
                          Navigator.pushReplacementNamed(context, '/signup0');
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Payment',
                        style: MyText.poppins(25, FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column (
                      children: companies.map((e) => PaymentCompanyCard(data: e)).toList(),
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
