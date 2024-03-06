import 'package:flutter/material.dart';

void goToPageOnly(BuildContext context,Widget page) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
    return page;
  }));
}