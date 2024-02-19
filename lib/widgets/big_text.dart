import 'package:flutter/material.dart';

import '../utils/constant/font_size.dart';
class BigText extends StatelessWidget {
  final String text;

  const BigText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(fontSize: FontSize.title,fontWeight: FontWeight.bold),);
  }
}