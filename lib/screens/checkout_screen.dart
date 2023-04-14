import 'package:abhinandan/screens/order_confirmed_screen.dart';
import 'package:abhinandan/screens/vacation_screen.dart';
import 'package:abhinandan/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _value = 0;
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
        color: Colors.white30,
        height: 95,
        // color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: InkWell(
            onTap: () {
              if (_value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WalletScreen(),
                  ),
                );
              } else if (_value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VacationScreen(),
                  ),
                );
              } else if (_value == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderConfirmedScreen(),
                  ),
                );
              }
            },
            child: Container(
              height: 48,
              width: 296,
              decoration: BoxDecoration(
                  color: Color(0xff008833),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "Confirm",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Colors.white),
              ).centered(),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 4, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Online Payment",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cash On Delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                )
              ],
            ),
          ),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}
