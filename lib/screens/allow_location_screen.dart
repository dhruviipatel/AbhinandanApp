import 'package:flutter/material.dart';

import '../colors.dart';
import 'bottomNavbar.dart';

class AllowLocationScreen extends StatelessWidget {
  const AllowLocationScreen({super.key});
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
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Location.",
                    style: TextStyle(
                        fontFamily: "Open sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "175 & 176, Bannerghatta Main Rd, Dollars Colony, Phase 4, J. P. Nagar, Bengaluru, Karnataka 560076",
                    style: TextStyle(
                        fontFamily: "Open Sans",
                        color: Colors.grey.shade700,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.5,
                        height: 1.4),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavbar(),
                  )),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.myButtonColor),
                child: Center(
                    child: Text(
                  "Confirm",
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
