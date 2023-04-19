import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../colors.dart';

class DairyItems extends StatelessWidget {
  const DairyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 235),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color(0xffd7d7d7)),
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
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
          );
        },
      ),
    );
  }
}
