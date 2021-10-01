import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Abhsihek kaithwas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Text("Hello Welcome to $days dart project by $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
