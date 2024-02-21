import 'package:flutter/material.dart';

import '../utils/constant/font_size.dart';
class SubHeading extends StatelessWidget {
  final String text;

  const SubHeading({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(fontSize: FontSize.bodyLarge,fontWeight: FontWeight.normal),);
  }
}