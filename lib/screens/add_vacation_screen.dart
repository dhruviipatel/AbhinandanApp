import 'package:abhinandan/screens/vacation_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddvacationScreen extends StatelessWidget {
  const AddvacationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Vacation",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomSheet: BottomAppBar(
          height: 95,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VacationScreen())),
              child: Container(
                height: 48,
                width: 296,
                decoration: BoxDecoration(
                    color: Color(0xff008833),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  "Confirm vacation",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ).centered(),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "select vacation",
              style: TextStyle(
                  color: Color(0xff797979),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff797979)),
                  borderRadius: BorderRadius.circular(4)),
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "15-01-2023-16-19",
                      style: TextStyle(
                          letterSpacing: 0.25,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
