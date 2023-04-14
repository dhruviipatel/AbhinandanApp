import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              decoration: BoxDecoration(
                  //color: Colors.amber,
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      height: 96,
                      width: 115,
                      child: Image.asset(
                        "assets/images/dairyproducts.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dairy Products",
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Milk,Milk Products",
                            style: TextStyle(
                                letterSpacing: 0.25,
                                fontSize: 14,
                                color: Color(0xff797979),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "15 Products",
                            style: TextStyle(
                                letterSpacing: 0.4,
                                fontSize: 14,
                                color: Color(0xff00ca44),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
