import 'package:abhinandan/screens/allow_location_screen.dart';
import 'package:abhinandan/screens/manual_location_screen.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});
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
                  "Set Your Location.",
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
                  "By setting up the location it is easier to show avilable resturants and products.",
                  style: TextStyle(
                      fontFamily: "Open Sans",
                      color: Colors.grey.shade700,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                      height: 1.3),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllowLocationScreen(),
                      )),
                  child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColors.myButtonColor),
                    child: Center(
                        child: Text(
                      "Allow Location Access",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManualLocationScreen(),
                      )),
                  child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border:
                            Border.all(width: 1.0, color: Color(0xffd7d7d7))),
                    child: Center(
                        child: Text(
                      "Search your location on map",
                      style: TextStyle(
                          color: MyColors.myButtonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
