import 'package:abhinandan/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:timeline_tile/timeline_tile.dart';

import 'draff.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order ID : AB26",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4)),
                      Text("Time Feb 21, 2023",
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff797979),
                              letterSpacing: 0.25))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 61,
                      decoration: BoxDecoration(
                          color: Color(0xffd7d7d7),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.4),
                      ).centered(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 24,
                      width: 61,
                      decoration: BoxDecoration(
                          color: MyColors.myOrrangeColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        "Invoice",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.4),
                      ).centered(),
                    )
                  ],
                ),
              ],
            ),
            20.heightBox,
            Container(
                height: 50,
                child: Row(
                  children: [
                    TimelineTile(
                      alignment: TimelineAlign.start,
                      axis: TimelineAxis.horizontal,
                      indicatorStyle: IndicatorStyle(
                        color: Colors.white,
                        width: 10,
                        iconStyle: IconStyle(
                            iconData: Icons.recommend_outlined,
                            fontSize: 27,
                            color: MyColors.myOrrangeColor),
                      ),
                      beforeLineStyle: LineStyle(
                          thickness: 2, color: MyColors.myOrrangeColor),
                      afterLineStyle:
                          LineStyle(thickness: 2, color: Colors.grey),
                      endChild: Container(
                        // height: 20,
                        width: 87,
                        //color: Colors.amber,
                        child: Text(
                          "Confirmed",
                          style: TextStyle(color: MyColors.myOrrangeColor),
                        ).centered(),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.start,
                      axis: TimelineAxis.horizontal,
                      indicatorStyle: IndicatorStyle(
                          color: Colors.white,
                          // width: 70,
                          iconStyle: IconStyle(
                            iconData: Icons.inventory_2_outlined,
                            fontSize: 25,
                            color: Color(0xff797979),
                          )),
                      beforeLineStyle: LineStyle(thickness: 2),
                      endChild: Container(
                        height: 20,
                        width: 87,
                        //color: Colors.amber,
                        child: Text("Preparing").centered(),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.start,
                      axis: TimelineAxis.horizontal,
                      indicatorStyle: IndicatorStyle(
                          color: Colors.white,
                          // width: 70,
                          iconStyle: IconStyle(
                            iconData: Icons.directions_bike_outlined,
                            fontSize: 25,
                            color: Color(0xff797979),
                          )),
                      beforeLineStyle: LineStyle(thickness: 2),
                      endChild: Container(
                        height: 20,
                        width: 87,
                        //color: Colors.amber,
                        child: Text("On way").centered(),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.start,
                      axis: TimelineAxis.horizontal,
                      indicatorStyle: IndicatorStyle(
                          color: Colors.white,
                          // width: 70,
                          iconStyle: IconStyle(
                            iconData: Icons.sentiment_satisfied_alt_outlined,
                            fontSize: 25,
                            color: Color(0xff797979),
                          )),
                      beforeLineStyle: LineStyle(thickness: 2),
                      endChild: Container(
                        width: 87,
                        //  color: MyColors.myButtonColor,
                        child: Text("Delivered").centered(),
                      ),
                    ),
                  ],
                )),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
