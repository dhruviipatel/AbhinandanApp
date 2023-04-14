import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(MdiIcons.trashCanOutline))
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Row(
          //     children: [
          //       Image.asset(
          //         "assets/images/tomato1.png",
          //         height: 96,
          //         width: 115,
          //       ).box.make(),
          //       Column(
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 "Days: 1",
          //                 style: TextStyle(
          //                     fontSize: 14, fontWeight: FontWeight.w400),
          //               ),
          //               Text("asd")
          //             ],
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Image.asset("assets/images/tomato1.png").w(115).h(96),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tomato",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 20,
                                  ),
                                  Text(
                                    "58",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text("1 Kg"), Text("Qty: 1")],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

//empty cart design
//  body: Padding(
//         padding: const EdgeInsets.only(top: 50),
//         child: Container(
//             child:
//                 Image.asset("assets/images/emptycart.png").objectTopCenter()),
//       ),
