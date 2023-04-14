import 'package:abhinandan/screens/contactUs_screen.dart';
import 'package:abhinandan/screens/login_screen.dart';
import 'package:abhinandan/screens/milk_subscription_screen.dart';
import 'package:abhinandan/screens/myProfile_screen.dart';
import 'package:abhinandan/screens/order_screen.dart';
import 'package:abhinandan/screens/vacation_screen.dart';
import 'package:abhinandan/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:abhinandan/colors.dart';

import '../widgets/homescreen_widgets/Vegitables.dart';
import '../widgets/homescreen_widgets/dairyproducts.dart';
import '../widgets/homescreen_widgets/grocery.dart';
import '../widgets/homescreen_widgets/image_slider.dart';
import '../widgets/homescreen_widgets/shop_by_catagory.dart';
import 'mycart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appbar(),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider(),
              ShopByCatagory(),
              Vegitables(),
              DairyProducts(),
              Grocery(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(126),
      child: Container(
        decoration: BoxDecoration(color: MyColors.myOrrangeColor),
        child: Column(
          children: [
            _topbar(),
            _searchbar(),
          ],
        ),
      ),
    );
  }

  Widget _topbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.myOrrangeColor,
      title: Text(
        "Abhinandan",
        style: TextStyle(color: Colors.black, fontSize: 16, letterSpacing: 0.5),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Icon(Icons.search),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyCartScreen())),
            child: Icon(
              MdiIcons.cartOutline,
            ),
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
    );
  }

  Widget _searchbar() {
    return Container(
      height: 65,
      color: MyColors.myOrrangeColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: TextField(
          // onChanged: (value) => _runFilter(value),
          cursorColor: Color(0xff787575),
          decoration: InputDecoration(
              //isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(top: 13, bottom: 13),
              hintText: "Search Products...",
              prefixIcon: InkWell(child: Icon(Icons.search)),
              prefixIconColor: Color(0xff787575),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.white, width: 1),
              )),
        ),
      ),
    );
  }

  Widget MyDrawer() {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 0, 28),
      child: Column(
        children: [
          //my orders
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.archive_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "My Orders",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          // Divider(
          //   color: Colors.grey,
          // ),

          //home
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen())),
                    child: Row(
                      children: [
                        Icon(MdiIcons.homeOutline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //shop by catagory
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.category_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shop By Category",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //Milk subscription
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MilkSubscriptionScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.subscriptions_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Milk Subscriptions",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //vaction
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VacationScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.houseboat_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Vacation",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //my wallet
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WalletScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "My Wallet",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //profile
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfileScreen())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Color(0xff797979),
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //terms & condition
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.gavel_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //privacy policy
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.gpp_maybe_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //refund & return
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.currency_exchange_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Refund & Return",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //Shipping policy
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shipping Policy",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //contact us
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactUsScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.contact_support_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //about us
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_pin_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff04040b)),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          //sign out
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen())),
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign Out",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff04040b)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff797979),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
