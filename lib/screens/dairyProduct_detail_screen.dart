import 'package:abhinandan/screens/address_details_screen.dart';
import 'package:abhinandan/screens/dairyProduct_customDate_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import '../colors.dart';

class DairyPrdDetailScreen extends StatefulWidget {
  const DairyPrdDetailScreen({super.key});

  @override
  State<DairyPrdDetailScreen> createState() => _DairyPrdDetailScreenState();
}

class _DairyPrdDetailScreenState extends State<DairyPrdDetailScreen> {
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

  String defaulValue = "";
  List dropdownItems = [
    {"title": "500mL", "value": "1"},
    {"title": "1L", "value": "2"},
    {"title": "2L", "value": "4"},
  ];

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
          height: 52,
          color: Color(0xff008833),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressScreen())),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cow Milk",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 40,
                    width: 134,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd7d7d7)),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: defaulValue,
                            icon: Icon(
                              MdiIcons.menuDown,
                              color: Colors.black,
                            ),
                            isExpanded: true,
                            items: [
                              const DropdownMenuItem<String>(
                                child: Text(
                                  "Quantity",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                value: "",
                              ),
                              ...dropdownItems
                                  .map<DropdownMenuItem<String>>((data) {
                                return DropdownMenuItem(
                                    child: Text(data['title']),
                                    value: data['value']);
                              }).toList(),
                            ],
                            onChanged: (value) {
                              setState(() {
                                defaulValue = value!;
                              });
                            }),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Container(
                height: 268,
                width: 400,
                color: Colors.amber,
                child: Image.asset(
                  "assets/images/cowmilk.png",
                  fit: BoxFit.cover,
                ).box.make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.currency_rupee,
                    size: 28,
                  ),
                  Text(
                    "40",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  10.widthBox,
                  Icon(
                    Icons.currency_rupee,
                    size: 20,
                    color: Color(0xff797979),
                  ),
                  Text(
                    "44 / 500mL",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff797979),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 24, top: 5),
              child: Row(
                children: [
                  Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Color(0xff008833),
                          borderRadius: BorderRadius.circular(2)),
                      child: Icon(
                        MdiIcons.minus,
                        color: Colors.white,
                      )),
                  Container(
                    height: 24,
                    width: 46,
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ).centered(),
                  ),
                  Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Color(0xff008833),
                          borderRadius: BorderRadius.circular(2)),
                      child: Icon(
                        MdiIcons.plus,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 19, bottom: 0, top: 9, right: 19),
              child: Text(
                "Subscription Type",
                style: TextStyle(
                    color: Color(0xff797979),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 19, bottom: 9, top: 16, right: 19),
              child: Container(
                height: 32,
                width: 77,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd7d7d7)),
                    borderRadius: BorderRadius.circular(500)),
                child: Text(
                  "One Time",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4),
                ).centered(),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 19, bottom: 9, top: 16, right: 19),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 57,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(500)),
                        child: Text(
                          "Daily",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ).centered(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 32,
                        width: 104,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(500)),
                        child: Text(
                          "Alternate days",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ).centered(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomDateScreen())),
                        child: Container(
                          height: 32,
                          width: 63,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd7d7d7)),
                              borderRadius: BorderRadius.circular(500)),
                          child: Text(
                            "Custom",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4),
                          ).centered(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
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
                                    border:
                                        Border.all(color: Color(0xffd7d7d7)),
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
                                    border:
                                        Border.all(color: Color(0xffd7d7d7)),
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
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 19, bottom: 0, top: 9, right: 19),
              child: Text(
                "Product Description",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 19, bottom: 24, top: 9, right: 19),
              child: Text(
                "Milk is a white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for young mammals before they are able to digest solid food.",
                style: TextStyle(
                    height: 1.4,
                    fontSize: 16,
                    color: Color(0xff797979),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            90.heightBox,
          ],
        ),
      ),
    );
  }
}
