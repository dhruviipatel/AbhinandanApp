import 'package:abhinandan/colors.dart';
import 'package:abhinandan/screens/address_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDateScreen extends StatefulWidget {
  const CustomDateScreen({super.key});

  @override
  State<CustomDateScreen> createState() => _CustomDateScreenState();
}

class _CustomDateScreenState extends State<CustomDateScreen> {
  DateTime? startdate;
  DateTime? Enddate;

  void _ShowStartDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: MyColors.myCalenderColor,
              ),
            ),
            child: child!);
      },
    ).then((value) {
      setState(() {
        startdate = value;
      });
    });
  }

  String getStartText() {
    if (startdate == null) {
      return 'dd/mm/yyyy';
    } else {
      return '${startdate!.day}/${startdate!.month}/${startdate!.year}';
    }
  }

  void _ShowEndDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: MyColors.myCalenderColor,
              ),
            ),
            child: child!);
      },
    ).then((value) {
      setState(() {
        Enddate = value;
      });
    });
  }

  String getEndText() {
    if (Enddate == null) {
      return 'dd/mm/yyyy';
    } else {
      return '${Enddate!.day}/${Enddate!.month}/${Enddate!.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              MdiIcons.cartOutline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 18, 16, 18),
            child: Container(
              width: 25,
              decoration: BoxDecoration(
                  color: Color(0xffd20303),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "0",
                style: TextStyle(fontSize: 12),
              )),
            ),
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomSheet: BottomAppBar(
        elevation: 0,
        color: Colors.white30,
        height: 95,
        // color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressScreen(),
                  ));
            },
            child: Container(
              height: 48,
              width: 296,
              decoration: BoxDecoration(
                  color: Color(0xff008833),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "Confirm",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Colors.white),
              ).centered(),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 101,
                  width: 127,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.circular(4)),
                  child: Image.asset(
                    "assets/images/cowmilk.png",
                    fit: BoxFit.cover,
                  ),
                ),
                //  Image.asset("assets/images/cowmilk.png").w(115).h(100),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cow Milk",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        11.heightBox,
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 14,
                                ),
                                Text(
                                  "44",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.25),
                                )
                              ],
                            ),
                            5.widthBox,
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 14,
                                  color: Color(0xff797979),
                                ),
                                Text(
                                  "44",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff797979),
                                      letterSpacing: 0.25),
                                ),
                              ],
                            ),
                            5.widthBox,
                            Text(
                              "/",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.25),
                            ),
                            5.widthBox,
                            Text(
                              "500 ml",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff797979),
                                  letterSpacing: 0.25),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 24, 0),
            child: Text(
              "Select Days",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 13, 24, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffd7d7d7)),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Sun",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Color(0xff00cc44),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Mon",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffd7d7d7)),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Tue",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Color(0xff00cc44),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Wed",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffd7d7d7)),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Thu",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffd7d7d7)),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Fri",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
                Container(
                  height: 32,
                  width: 43,
                  decoration: BoxDecoration(
                      color: Color(0xff00cc44),
                      borderRadius: BorderRadius.circular(500)),
                  child: Text(
                    "Sat",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.25),
                  ).centered(),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start date",
                      style: TextStyle(
                          color: Color(0xff797979),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => _ShowStartDatePicker(),
                      //datePicker(context),
                      child: Container(
                        height: 32,
                        width: 132,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(500)),
                        child: Text(
                          getStartText(),
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ).centered(),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'End date',
                      style: TextStyle(
                          color: Color(0xff797979),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => _ShowEndDatePicker(),
                      child: Container(
                        height: 32,
                        width: 132,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(500)),
                        child: Text(
                          getEndText(),
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ).centered(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          12.heightBox,
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
