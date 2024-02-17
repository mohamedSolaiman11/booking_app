import 'package:flutter/material.dart';

import '../utils/constant/font_size.dart';
class MediumText extends StatelessWidget {
  final String text;
  final Color color;
  const MediumText({
    super.key, required this.text, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text,style:  TextStyle(fontSize: FontSize.medium,fontWeight: FontWeight.normal,color: color),));
  }
}