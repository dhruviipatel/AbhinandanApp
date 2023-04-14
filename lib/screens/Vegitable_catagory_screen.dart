import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'mycart_screen.dart';

class VegitableCatagoryScreen extends StatefulWidget {
  const VegitableCatagoryScreen({super.key});

  @override
  State<VegitableCatagoryScreen> createState() =>
      _VegitableCatagoryScreenState();
}

class _VegitableCatagoryScreenState extends State<VegitableCatagoryScreen> {
  String defaulValue = "";
  List dropdownItems = [
    {"title": "Valsad", "value": "1"},
    {"title": "Vapi", "value": "2"},
    {"title": "Mumbai", "value": "3"},
    {"title": "Ahmedabad", "value": "4"},
    {"title": "Vadodara", "value": "5"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vegitables",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 44,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white70,
                      border: Border.all(color: Color(0xff797979), width: 0.5),
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
                                    fontSize: 16, fontWeight: FontWeight.w600),
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
                        border: Border.all(),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 5.0,
                        //   )
                        // ],
                        borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.sort,
                    ).centered(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
