import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              Container(
                  width: 500,
                  height: 100,
                  color: Colors.blue,
                  child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "بسم الله الرحمن الرحيم",
                        style: TextStyle(fontSize: 30),
                      ))),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 500,
                  height: 100,
                  color: Colors.red,
                  child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "بسم الله الرحمن الرحيم",
                        style: TextStyle(fontSize: 30),
                      ))),
            ],
          )),
    );
  }
}
