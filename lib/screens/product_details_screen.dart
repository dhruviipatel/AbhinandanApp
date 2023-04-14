import 'package:abhinandan/screens/mycart_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

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
                  MaterialPageRoute(builder: (context) => MyCartScreen())),
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
              child: Text(
                "Tomato",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Container(
                height: 268,
                width: 400,
                color: Colors.amber,
                child: Image.asset(
                  "assets/images/tomato1.png",
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
                    "58",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  10.widthBox,
                  Icon(
                    Icons.currency_rupee,
                    size: 20,
                    color: Color(0xff797979),
                  ),
                  Text(
                    "69 / 1Kg",
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
                "The tomato is the edible berry of the plant Solanum lycopersicum, commonly known as the tomato plant. The species originated in western South America",
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
            90.heightBox
          ],
        ),
      ),
    );
  }
}
