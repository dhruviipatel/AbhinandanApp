import 'package:flutter/material.dart';

import 'groceryItems.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Grocery',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 6,
                  ),
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
        Image.asset("assets/images/groceriesbanner.png"),
        SizedBox(height: 14),
        GroceryItems(),
      ],
    );
  }
}
