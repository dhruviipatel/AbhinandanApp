import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffff6711), Color(0xffff0000)]),
                    borderRadius: BorderRadius.circular(72),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpeg'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 93,
                  decoration: BoxDecoration(
                      color: Color(0xffff0000),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.trayArrowUp,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Upload",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              "Name",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.25,
                  color: Color(0xff797979)),
            ),
            TextFormField(
              cursorColor: Color(0xff797979),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Mobile",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.25,
                  color: Color(0xff797979)),
            ),
            TextFormField(
              cursorColor: Color(0xff797979),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.25,
                  color: Color(0xff797979)),
            ),
            TextFormField(
              cursorColor: Color(0xff797979),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "City",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.25,
                  color: Color(0xff797979)),
            ),
            TextFormField(
              cursorColor: Color(0xff797979),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff797979),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Container(
                height: 48,
                width: 149,
                decoration: BoxDecoration(
                    color: Color(0xff008833),
                    borderRadius: BorderRadius.circular(45)),
                child: Text(
                  "Update",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ).centered(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
