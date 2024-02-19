import 'package:flutter/material.dart';

import '../utils/constant/font_size.dart';
class CaptionText extends StatelessWidget {
  final String text;

  const CaptionText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(fontSize: FontSize.caption,fontWeight: FontWeight.normal),);
  }
}
