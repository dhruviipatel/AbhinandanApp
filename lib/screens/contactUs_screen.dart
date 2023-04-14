import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "Regarding",
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
              "Message",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.25,
                  color: Color(0xff797979)),
            ),
            TextFormField(
              minLines: 6,
              maxLines: null,
              keyboardType: TextInputType.streetAddress,
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
              height: 46,
            ),
            Center(
              child: Container(
                height: 48,
                width: 149,
                decoration: BoxDecoration(
                    color: Color(0xff008833),
                    borderRadius: BorderRadius.circular(45)),
                child: Text(
                  "Submit",
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
