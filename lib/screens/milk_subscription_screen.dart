import 'package:abhinandan/screens/subscription_details.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MilkSubscriptionScreen extends StatefulWidget {
  const MilkSubscriptionScreen({super.key});

  @override
  State<MilkSubscriptionScreen> createState() => _MilkSubscriptionScreenState();
}

class _MilkSubscriptionScreenState extends State<MilkSubscriptionScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Milk Subscriptions Packages",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                  indicatorColor: Color(0xff53ad00),
                  unselectedLabelColor: Color(0xff797979),
                  labelColor: Color(0xff008833),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  tabs: [
                    Tab(
                      child: Text(
                        "Plans",
                        style: TextStyle(
                            // color: Color(0xff53ad00),
                            ),
                      ),
                    ),
                    Tab(
                      child: Text("My Subscriptons"),
                    )
                  ]),
            ),
            TabBarView(children: [_plans(), _mysubscriptions()]).expand()
          ],
        ),
      ),
    );
  }

  Widget _plans() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              decoration: isSelected
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffe8f178),
                          Color(0xff00b52e),
                          Color(0xff00b444),
                        ],
                      ),
                    )
                  : BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
              height: 101,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(23, 12, 23, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan1: 500mL Milk/day",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Discount: 5%",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Text("Validity: ",
                            style: isSelected
                                ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5)
                                : TextStyle(
                                    color: Color(0xff797979),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5)),
                        Text("30 Days",
                            style: isSelected
                                ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: 0.5)
                                : TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xfffdb600),
                                    letterSpacing: 0.5)),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Cost: ",
                            style: isSelected
                                ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5)
                                : TextStyle(
                                    color: Color(0xff797979),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5)),
                        Icon(
                          Icons.currency_rupee,
                          color: isSelected ? Colors.white : Color(0xff008833),
                          size: 14,
                        ),
                        Text(
                          "2500",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color:
                                  isSelected ? Colors.white : Color(0xff008833),
                              letterSpacing: 0.5),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _mysubscriptions() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubscriptionDetailScreen(),
                    )),
                child: Container(
                  child: Column(
                    children: [
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xff00ca44),
                                          borderRadius:
                                              BorderRadius.circular(500)),
                                      child: Text(
                                        "Ongoing",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.4),
                                      ).centered(),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 95,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xffd7d7d7),
                                          borderRadius:
                                              BorderRadius.circular(500)),
                                      child: Text(
                                        "30 days Plan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.4),
                                      ).centered(),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 53,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xffdfdb600),
                                          borderRadius:
                                              BorderRadius.circular(500)),
                                      child: Text(
                                        "Plan1",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.4),
                                      ).centered(),
                                    ),
                                  ],
                                ),
                                6.heightBox,
                                Row(
                                  children: [
                                    Text(
                                      "Plan1: ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4),
                                    ),
                                    Text(
                                      "500mL Milk /day",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff797979),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.25),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 22, left: 22),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Color(0xffd7d7d7),
                              ),
                            )
                          ],
                        ),
                      ),
                      7.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text(
                              "01-01-2023 ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4),
                            ),
                            Text(
                              "To ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff797979),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.25),
                            ),
                            Text(
                              "31-01-2023 ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4),
                            ),
                          ],
                        ),
                      ),
                      5.heightBox,
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    5.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd30303),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Expired",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 95,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd7d7d7),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "30 days Plan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 53,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffdfdb600),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Plan1",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                ],
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Text(
                                    "Plan1: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.4),
                                  ),
                                  Text(
                                    "500mL Milk /day",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xffd7d7d7),
                            ),
                          )
                        ],
                      ),
                    ),
                    7.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "01-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text(
                            "To ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.25),
                          ),
                          Text(
                            "31-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    5.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd30303),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Expired",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  // Container(
                                  //   width: 95,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffd7d7d7),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "30 days Plan",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  Container(
                                    width: 53,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffd9e68),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Daily",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                ],
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Text(
                                    "Plan1: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.4),
                                  ),
                                  Text(
                                    "500mL Milk /day",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xffd7d7d7),
                            ),
                          )
                        ],
                      ),
                    ),
                    7.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "01-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text(
                            "To ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.25),
                          ),
                          Text(
                            "31-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    5.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd30303),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Expired",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffd9e68),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "One time",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 95,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffd7d7d7),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "30 days Plan",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 53,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffdfdb600),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "Plan1",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                ],
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Text(
                                    "Plan1: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.4),
                                  ),
                                  Text(
                                    "500mL Milk /day",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xffd7d7d7),
                            ),
                          )
                        ],
                      ),
                    ),
                    7.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "01-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text(
                            "To ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.25),
                          ),
                          Text(
                            "31-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    5.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd30303),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Expired",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 95,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffd9e68),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Alternate days",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 95,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffd7d7d7),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "30 days Plan",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 53,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffdfdb600),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "Plan1",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                ],
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Text(
                                    "Plan1: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.4),
                                  ),
                                  Text(
                                    "500mL Milk /day",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xffd7d7d7),
                            ),
                          )
                        ],
                      ),
                    ),
                    7.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "01-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text(
                            "To ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.25),
                          ),
                          Text(
                            "31-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    5.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd30303),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Expired",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffd9e68),
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    child: Text(
                                      "Custom",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.4),
                                    ).centered(),
                                  ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 95,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffd7d7d7),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "30 days Plan",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                  // SizedBox(
                                  //   width: 12,
                                  // ),
                                  // Container(
                                  //   width: 53,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(0xffdfdb600),
                                  //       borderRadius:
                                  //           BorderRadius.circular(500)),
                                  //   child: Text(
                                  //     "Plan1",
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.w400,
                                  //         letterSpacing: 0.4),
                                  //   ).centered(),
                                  // ),
                                ],
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Text(
                                    "Plan1: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.4),
                                  ),
                                  Text(
                                    "500mL Milk /day",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.25),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, left: 22),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xffd7d7d7),
                            ),
                          )
                        ],
                      ),
                    ),
                    7.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            "01-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                          Text(
                            "To ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.25),
                          ),
                          Text(
                            "31-01-2023 ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
