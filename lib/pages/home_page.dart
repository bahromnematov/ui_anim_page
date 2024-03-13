import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Amazon",
          style: TextStyle(fontFamily: "Billabong", fontSize: 30),
        ),
      ),
      body: Center(
        child: Text(
          "Welcome To Amazon",
          style: TextStyle(fontSize: 34),
        ),
      ),
    );
  }
}
