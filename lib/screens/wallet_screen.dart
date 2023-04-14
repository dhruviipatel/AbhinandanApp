import 'package:abhinandan/colors.dart';
import 'package:abhinandan/screens/add_money_in_wallet.dart';
import 'package:abhinandan/screens/order_confirmed_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'checkout_screen.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text(
            "My Wallet",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomSheet: BottomAppBar(
          height: 50,
          color: Color(0xff008833),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderConfirmedScreen())),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Proceed To Buy: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5,
                              color: Colors.white),
                        ),
                        Icon(Icons.currency_rupee,
                            size: 16, color: Colors.white),
                        Text(
                          "73",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              color: Color(0xfffdb600).withOpacity(0.10),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance Amount",
                      style: TextStyle(
                          color: Color(0xff797979),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 48,
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.25,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recharge Wallet",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 16,
                              ),
                              Text(
                                "500",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 32,
                          width: 88,
                          decoration: BoxDecoration(
                              color: MyColors.myOrrangeColor,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 16,
                              ),
                              Text(
                                "500",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 88,
                          decoration: BoxDecoration(
                              // color: MyColors.myOrrangeColor,
                              border: Border.all(color: Color(0xff797979)),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 16,
                              ),
                              Text(
                                "1000",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 88,
                          decoration: BoxDecoration(
                              // color: MyColors.myOrrangeColor,
                              border: Border.all(color: Color(0xff797979)),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 16,
                              ),
                              Text(
                                "2000",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddInWallet(),
                          ),
                        );
                      },
                      child: Container(
                        height: 36,
                        width: 136,
                        decoration: BoxDecoration(
                            color: Color(0xff008833),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: 0.25),
                        ).centered(),
                      ).centered(),
                    )
                  ]),
            )
          ],
        ));
  }
}
