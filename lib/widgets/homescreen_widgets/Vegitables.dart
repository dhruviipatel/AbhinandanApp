import 'package:abhinandan/widgets/homescreen_widgets/vegitableItems.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Vegitables extends StatelessWidget {
  const Vegitables({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Vegitables',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 91,
                    height: 32,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xffff0000), Color(0xfffb8d4f)])),
                    child: Text(
                      "7h:24min:30s",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ).centered(),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "View More",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: Color(0xff797979)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Color(0xff797979),
                      ))
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset("assets/images/vegitablebanner.png"),
        SizedBox(height: 16),
        VegitableItems(),
      ],
    );
  }
}
