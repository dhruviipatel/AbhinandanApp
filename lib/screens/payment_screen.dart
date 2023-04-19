import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomSheet: BottomAppBar(
          elevation: 0,
          color: Color.fromARGB(58, 157, 218, 222),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.brightnessPercent,
                      size: 18,
                      color: Colors.blue.shade700,
                    ),
                    5.widthBox,
                    Text(
                      "3 Offers Available",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Select Offers",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.blue.shade700),
                    ),
                    Icon(MdiIcons.chevronUp, color: Colors.blue.shade700)
                  ],
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 96,
                      width: 103,
                      child: Image.asset(
                        "assets/images/logo2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    10.widthBox,
                    Container(
                      height: 96,
                      width: 164,
                      color: Color(0xff549ff0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abhinandan",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                            3.heightBox,
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color(0xffffffff),
                                  size: 17,
                                ),
                                Text(
                                  "500",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xffd7d7d7))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.accountBoxOutline,
                      ),
                      Text(
                        "+91 9085626859",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " | dhruvi.patel@gmail.com",
                        style: TextStyle(color: Color(0xff797979)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "PREFFERED PAYMENT METHODS",
                style: TextStyle(
                    color: Color(0xff797979), fontWeight: FontWeight.w500),
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xffd7d7d7))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/mastercard.png",
                                height: 20,
                                width: 25,
                              ),
                              8.widthBox,
                              Text(
                                "HDFC Credit Card - 2745",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Container(
                            width: 40,
                            height: 25,
                            child: TextField(
                              cursorColor: Color(0xff797979),
                              decoration: InputDecoration(
                                hintText: "CVV",
                                contentPadding:
                                    EdgeInsets.only(top: 0.0, bottom: 12.0),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/rupay.png",
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "dhruvi.patel@oksbi",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xffd7d7d7),
                                ),
                                borderRadius: BorderRadius.circular(82)),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Color(0xffd7d7d7),
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "ALL PAYMENT METHODS",
                style: TextStyle(
                    color: Color(0xff797979), fontWeight: FontWeight.w500),
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xffd7d7d7))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.creditCardMultipleOutline,
                            size: 30,
                            // color: Colors.blue,
                          ),
                          8.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                "Mastercard, Visa, Rupay, Maestro, Amex",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff797979)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.calendar,
                            size: 30,
                            // color: Colors.blue,
                          ),
                          8.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EMI",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                "Card EarlySalary and more",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff797979)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            50.heightBox,
          ],
        ),
      ),
    );
  }
}
