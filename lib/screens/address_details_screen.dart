import 'package:abhinandan/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
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
          "Details",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomSheet: BottomAppBar(
        height: 59,
        color: Color(0xff008833),
        child: Center(
          child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckoutScreen())),
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
                      Icon(Icons.currency_rupee, size: 16, color: Colors.white),
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
                height: 44,
                child: TextFormField(
                  // onChanged: (value) => _runFilter(value),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    //isDense: true,
                    filled: true,
                    fillColor: Colors.white70,
                    contentPadding:
                        EdgeInsets.only(top: 13, bottom: 13, left: 12),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 0.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 1),
                    ),
                  ),
                ),
              ),
              28.heightBox,
              Text(
                "Mobile",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
                height: 44,
                child: TextFormField(
                  // onChanged: (value) => _runFilter(value),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    //isDense: true,
                    filled: true,
                    fillColor: Colors.white70,
                    contentPadding:
                        EdgeInsets.only(top: 13, bottom: 13, left: 12),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 0.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 1),
                    ),
                  ),
                ),
              ),
              28.heightBox,
              Text(
                "City",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
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
                      icon: Icon(MdiIcons.menuDown),
                      isExpanded: true,
                      items: [
                        const DropdownMenuItem<String>(
                          child: Text(
                            "Select City",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 14,
                            ),
                          ),
                          value: "",
                        ),
                        ...dropdownItems.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: Text(data['title']), value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          defaulValue = value!;
                        });
                      }),
                ),
              ),
              28.heightBox,
              Text(
                "Area",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
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
                      icon: Icon(MdiIcons.menuDown),
                      isExpanded: true,
                      items: [
                        const DropdownMenuItem<String>(
                          child: Text(
                            "Select Area",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 14,
                            ),
                          ),
                          value: "",
                        ),
                        ...dropdownItems.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: Text(data['title']), value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          defaulValue = value!;
                        });
                      }),
                ),
              ),
              28.heightBox,
              Text(
                "Address",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
                child: TextFormField(
                  minLines: 5,
                  maxLines: null,
                  keyboardType: TextInputType.streetAddress,
                  // onChanged: (value) => _runFilter(value),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    //isDense: true,
                    filled: true,
                    fillColor: Colors.white70,
                    contentPadding:
                        EdgeInsets.only(top: 13, bottom: 13, left: 12),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 0.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Color(0xff797979), width: 1),
                    ),
                  ),
                ),
              ),
              28.heightBox,
              Text(
                "Delivery Date",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
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
                      icon: Icon(MdiIcons.menuDown),
                      isExpanded: true,
                      items: [
                        const DropdownMenuItem<String>(
                          child: Text(
                            "Select Date",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 14,
                            ),
                          ),
                          value: "",
                        ),
                        ...dropdownItems.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: Text(data['title']), value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          defaulValue = value!;
                        });
                      }),
                ),
              ),
              28.heightBox,
              Text(
                "Delivery Time Slot",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff797979),
                  letterSpacing: 0.25,
                ),
              ),
              4.heightBox,
              Container(
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
                      icon: Icon(MdiIcons.menuDown),
                      isExpanded: true,
                      items: [
                        const DropdownMenuItem<String>(
                          child: Text(
                            "Select Slot",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 14,
                            ),
                          ),
                          value: "",
                        ),
                        ...dropdownItems.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: Text(data['title']), value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          defaulValue = value!;
                        });
                      }),
                ),
              ),
              60.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
