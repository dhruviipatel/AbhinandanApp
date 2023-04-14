import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'address_details_screen.dart';

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
      bottomSheet: BottomAppBar(
          height: 140,
          color: Color(0xff008833),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressScreen())),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Proceed To Buy: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5,
                              color: Colors.white),
                        ),
                        Icon(Icons.currency_rupee,
                            size: 16, color: Colors.white),
                        Text(
                          "73",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                ),
              ),
            ),
          )),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
              child: Row(
                children: [
                  Image.asset("assets/images/tomato1.png").w(115).h(96),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 17),
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
                          17.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1 Kg",
                                    style: TextStyle(
                                        color: Color(0xff797979),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.25),
                                  ),
                                  3.heightBox,
                                  Text("Qty: 1",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4))
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff008833),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Icon(
                                        MdiIcons.minus,
                                        color: Colors.white,
                                      )),
                                  Container(
                                    height: 24,
                                    width: 46,
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ).centered(),
                                  ),
                                  Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff008833),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Icon(
                                        MdiIcons.plus,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: TextFormField(
                    // onChanged: (value) => _runFilter(value),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      //isDense: true,
                      filled: true,
                      hintText: 'Coupon Code',
                      // hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.only(top: 13, bottom: 13, left: 13),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            BorderSide(color: Color(0xffd7d7d7), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            BorderSide(color: Color(0xffd7d7d7), width: 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                      color: Color(0xff008833),
                      border: Border.all(color: Color(0xffd7d7d7)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    "Apply",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: Colors.white),
                  ).centered(),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 22, 27, 14),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub Total",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 16,
                        ),
                        Text(
                          "58",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                18.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Cost",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 16,
                        ),
                        Text(
                          "20",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                18.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discountl",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 16,
                        ),
                        Text(
                          "5",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                18.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: Color(0xff00b444),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 16,
                          color: Color(0xff00b444),
                        ),
                        Text(
                          "73",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff00b444),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
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
