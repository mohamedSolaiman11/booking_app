import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
// osama master
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("",style: TextStyle(fontSize: 40),),),
      ),
    );
  }
}
