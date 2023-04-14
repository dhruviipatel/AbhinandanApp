import 'package:flutter/material.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: _searchbar(),
    );
  }

  Widget _searchbar() {
    return Container(
      height: 69,
      // color: MyColors.myOrrangeColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
        child: TextField(
          // onChanged: (value) => _runFilter(value),
          cursorColor: Colors.black,
          decoration: InputDecoration(
              //isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(top: 13, bottom: 13),
              hintText: "Search Products...",
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: InkWell(child: Icon(Icons.search)),
              prefixIconColor: Colors.black,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 1),
              )),
        ),
      ),
    );
  }
}
