import 'package:abhinandan/screens/add_vacation_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class VacationScreen extends StatelessWidget {
  const VacationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Vacation",
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
                  MaterialPageRoute(builder: (context) => AddvacationScreen())),
              child: Container(
                height: 48,
                width: 296,
                decoration: BoxDecoration(
                    color: Color(0xff008833),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  "Add vacation",
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
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Card(
                // color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 18, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Start Date",
                              style: TextStyle(
                                color: Color(0xff797979),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4,
                              )),
                          Text("15-01-2023",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.25,
                                  height: 1.4))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "End Date",
                            style: TextStyle(
                                color: Color(0xff797979),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text("15-01-2023",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.25,
                                  height: 1.4))
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff797979),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      // No vacation
      // Padding(
      //   padding: const EdgeInsets.only(bottom: 91),
      //   child: Stack(
      //     children: [
      //       Container(
      //         height: 307,
      //         width: 307,
      //         child: Image.asset("assets/images/emptyvacation.png"),
      //       ).centered(),
      //       Positioned(
      //         left: 70,
      //         top: 370,
      //         child: Text(
      //           "You have no vacation added",
      //           style: TextStyle(
      //               fontSize: 16,
      //               fontWeight: FontWeight.w600,
      //               letterSpacing: 0.4,
      //               color: Color(0xff797979)),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
