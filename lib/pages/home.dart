import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("بسم الله الرحمن الرحيم",style: TextStyle(fontSize: 40),),),
      ),
    );
  }
}
