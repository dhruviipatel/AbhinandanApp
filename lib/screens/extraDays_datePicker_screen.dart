import 'package:flutter/material.dart';
import '../widgets/multipleDatePicker.dart';

class ExtraDaysScreen extends StatelessWidget {
  const ExtraDaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Extras",
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
