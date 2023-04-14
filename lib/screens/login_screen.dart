import 'package:flutter/material.dart';

import '../colors.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 80, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Your Mobile number",
                  style: TextStyle(
                      fontFamily: "Open sans",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Row(
                  children: [
                    Text(
                      "to get ",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "OTP",
                      style: TextStyle(
                          fontSize: 20,
                          color: MyColors.myOrrangeColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Phone Number",
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
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "+91",
                          style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 16,
                              color: Color(0xff2b2a2a).withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 0.3,
                        ),
                      ),
                      Text(
                        "10-digit mobile number",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16,
                          color: Color(0xff2b2a2a).withOpacity(0.8),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "By Signing up you will accept the",
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Terms of Service ",
                      style: TextStyle(
                        height: 1.3,
                        fontFamily: "Open Sans",
                        fontSize: 14,
                        color: MyColors.myOrrangeColor,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "and the ",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        height: 1.3,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "Privacy Policy ",
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
                    builder: (context) => OtpScreen(),
                  )),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.myButtonColor),
                child: Center(
                    child: Text(
                  "Get Your OTP",
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
