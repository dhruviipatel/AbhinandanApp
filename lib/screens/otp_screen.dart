import 'package:abhinandan/screens/set_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Your OTP sent to",
                  style: TextStyle(
                      fontFamily: "Open sans",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Text(
                  "9924382203 ",
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    color: MyColors.myOrrangeColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "OTP",
                  style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 14,
                      color: Color(0xff797979),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25),
                ),
                SizedBox(
                  height: 5,
                ),
                Pinput(
                  length: 6,
                  showCursor: false,
                  defaultPinTheme: PinTheme(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(width: 1.0, color: Colors.grey.shade700),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Did not recieve your OTP? ",
                          style: TextStyle(
                            height: 1.3,
                            fontFamily: "Open Sans",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Retry in ",
                              style: TextStyle(
                                height: 1.4,
                                fontFamily: "Open Sans",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              "60S",
                              style: TextStyle(
                                height: 1.4,
                                fontFamily: "Open Sans",
                                color: MyColors.myOrrangeColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "RESEND",
                      style: TextStyle(
                        height: 1.3,
                        fontFamily: "Open Sans",
                        fontSize: 14,
                        color: MyColors.myOrrangeColor,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SetLocationScreen(),
                  )),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.myButtonColor),
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
