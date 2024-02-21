import 'package:flutter/material.dart';

import '../utils/constant/font_size.dart';
class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  const SmallText({
    super.key, required this.text, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text,style:  TextStyle(fontSize: FontSize.bodyLarge,fontWeight: FontWeight.normal,color: color),));
  }
}