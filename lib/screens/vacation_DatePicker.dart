import 'package:abhinandan/widgets/multipleDatePicker.dart';
import 'package:flutter/material.dart';

class VacationDatePicker extends StatelessWidget {
  const VacationDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Vacation",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: MultipleDatePicker());
  }
}
