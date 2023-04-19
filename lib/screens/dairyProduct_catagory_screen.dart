import 'package:abhinandan/screens/dairyProduct_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../colors.dart';
import 'mycart_screen.dart';

class DairyProductCatagoryScreen extends StatefulWidget {
  const DairyProductCatagoryScreen({super.key});

  @override
  State<DairyProductCatagoryScreen> createState() =>
      _DairyProductCatagoryScreenState();
}

class _DairyProductCatagoryScreenState
    extends State<DairyProductCatagoryScreen> {
  String defaulValue = "";
  List dropdownItems = [
    {"title": "In stock", "value": "1"},
    {"title": "Out Of stock", "value": "2"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dairy Products",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyCartScreen())),
            child: Icon(
              MdiIcons.cartOutline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 18, 10, 18),
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 44,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white70,
                        border:
                            Border.all(color: Color(0xff797979), width: 0.5),
                      ),
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
                                  "All",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
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
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 0.5, color: Colors.grey.withOpacity(0.5)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                offset: Offset(0, 2)),
                          ],
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.sort,
                      ).centered(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 235),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DairyPrdDetailScreen())),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0, color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/images/cowmilk.png",
                                height: 100,
                                width: 150,
                              ).box.p3.make(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Text(
                                "Cow Milk",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.4),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, right: 12),
                                    child: Text(
                                      "1 L",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff797979),
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.4),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_rupee,
                                            size: 14,
                                            color: MyColors.myOrrangeColor,
                                          ),
                                          Text(
                                            "38",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: MyColors.myOrrangeColor,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.4),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_rupee,
                                            size: 14,
                                            color: Color(0xff797979),
                                          ),
                                          Text(
                                            "40",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff797979),
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.4),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Container(
                                height: 36,
                                width: 136,
                                decoration: BoxDecoration(
                                    color: Color(0xff008833),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.25,
                                      color: Colors.white),
                                ).centered(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 36,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Color(0xffefefef),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "In Stock",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff797979),
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.25),
                              ).centered(),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
