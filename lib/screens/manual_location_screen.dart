import 'package:flutter/material.dart';
import '../colors.dart';
import 'bottomNavbar.dart';

class ManualLocationScreen extends StatelessWidget {
  const ManualLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter your area or landmarks",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  TextField(
                    // onChanged: (value) => _runFilter(value),
                    cursorColor: Color(0xff787575),
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(13),
                        hintText: "Search",
                        prefixIcon: InkWell(child: Icon(Icons.search)),
                        prefixIconColor: Color(0xff787575),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavbar(),
                        )),
                    child: Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: MyColors.myButtonColor),
                      child: Center(
                          child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
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


// InkWell(
//                     // onTap: () => Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => ManualLocationScreen(),
//                     //     )),
//                     child: Container(
//                       height: 48,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.white,
//                           border: Border.all(width: 1.0, color: Colors.grey)),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Row(
//                           children: [
//                             Icon(Icons.search),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             // Text(
//                             //   "Search",
//                             //   style: TextStyle(
//                             //       color: Colors.grey.withOpacity(0.9),
//                             //       fontSize: 16,
//                             //       letterSpacing: 0.5,
//                             //       fontWeight: FontWeight.w400),
//                             // ),
//                           ],
//                         ).objectCenterLeft(),
//                       ),
//                     ),
//                   ),