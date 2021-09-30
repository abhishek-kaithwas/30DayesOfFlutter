import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Abhsihek kaithwas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello Welcome to $days dart project by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
