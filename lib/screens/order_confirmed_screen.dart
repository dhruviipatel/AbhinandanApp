import 'package:abhinandan/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thanks",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(80, 140, 80, 140),
        child: Column(
          children: [
            Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                  border: Border.all(width: 6, color: MyColors.myOrrangeColor),
                  borderRadius: BorderRadius.circular(82)),
              child: Column(
                children: [
                  Icon(
                    Icons.check,
                    color: MyColors.myOrrangeColor,
                    size: 65,
                  ),
                ],
              ),
            ),
            20.heightBox,
            Text(
              'ORDER ID : AB26',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            10.heightBox,
            Center(
                child: Text(
              "Thanks for placing order. All details, shipping of orders, status, delivery shall be sent to you via an sms or email",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ))
          ],
        ).centered(),
      ),
    );
  }
}
