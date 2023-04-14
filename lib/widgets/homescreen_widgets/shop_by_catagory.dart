import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopByCatagory extends StatelessWidget {
  const ShopByCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cataimages = [
      "assets/images/dairyproducts.png",
      "assets/images/vegitables.png",
      "assets/images/grocery.png",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Shop by Category",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        //below code for dynamic data
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        //   child: Container(
        //     height: 128,
        //     child: ListView.builder(
        //       itemCount: 3,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) {
        //         return Padding(
        //           padding: const EdgeInsets.all(2.0),
        //           child: Container(
        //             height: 128,
        //             width: 108,
        //             decoration: BoxDecoration(
        //                 border: Border.all(width: 1, color: Color(0xffd7d7d7)),
        //                 borderRadius: BorderRadius.circular(4)),
        //             child: Column(
        //               children: [
        //                 Image.asset("assets/images/dairyproducts.png")
        //                     .box
        //                     .rounded
        //                     .p8
        //                     .make(),
        //                 Text(
        //                   "Dairy Products",
        //                   style: TextStyle(
        //                       fontSize: 12,
        //                       fontWeight: FontWeight.w600,
        //                       letterSpacing: 0.4),
        //                 )
        //               ],
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Row(
            children: [
              Container(
                height: 128,
                width: 108,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffd7d7d7)),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  children: [
                    Image.asset("assets/images/dairyproducts.png")
                        .box
                        .rounded
                        .p8
                        .make(),
                    Text(
                      "Dairy Products",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 128,
                width: 108,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffd7d7d7)),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  children: [
                    Image.asset("assets/images/vegitable.png")
                        .box
                        .rounded
                        .p8
                        .make(),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "Vegitable and Fruits",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.4),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 128,
                width: 108,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffd7d7d7)),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  children: [
                    Image.asset("assets/images/dairyproducts.png")
                        .box
                        .rounded
                        .p8
                        .make(),
                    Text(
                      "Grocery",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
