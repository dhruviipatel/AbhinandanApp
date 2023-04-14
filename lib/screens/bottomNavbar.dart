import 'package:abhinandan/screens/search_screen.dart';
import 'package:abhinandan/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'category_screen.dart';
import 'home_screen.dart';
import 'order_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final screen = [
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(),
    WalletScreen(),
    OrderScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        height: 80,
        //color: Color(0x00ffffff),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.black,
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    height: 30,
                  ),
                ),
                Container(
                  height: 50,
                  // color: Colors.white,
                  color: Colors.white,
                )
              ],
            ),
            Positioned(
              left: 30,
              right: 30,
              top: 2,
              child: Container(
                color: Colors.white,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtonBar(
                          text: "Home",
                          icon: Icons.home_outlined,
                          selected: _selectedIndex == 0,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          }),
                      IconButtonBar(
                          text: "Category",
                          icon: Icons.category_outlined,
                          selected: _selectedIndex == 1,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          }),
                      IconButtonBar(
                          text: "Search",
                          icon: Icons.search,
                          selected: _selectedIndex == 2,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          }),
                      IconButtonBar(
                          text: "Wallet",
                          icon: MdiIcons.walletOutline,
                          selected: _selectedIndex == 3,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                          }),
                      IconButtonBar(
                          text: "My Orders",
                          icon: MdiIcons.packageDown,
                          selected: _selectedIndex == 4,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 4;
                            });
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconButtonBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  const IconButtonBar({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: onPressed,
          icon: Icon(icon,
              size: 25, color: selected ? Colors.green : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(
              height: 0.001,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4,
              color: selected ? Colors.green : Colors.grey),
        )
      ],
    );
  }
}
