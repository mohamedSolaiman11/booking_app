import 'dart:ffi';

import 'package:booking_app/utils/constant/app_style.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

import '../utils/constant/app_color.dart';

class CustomButtonFullWidth extends StatelessWidget {
  final String text;
  final Future Function()? onTap;
  const CustomButtonFullWidth({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: onTap,
      child: Container(
        width:width,
        height: height*.07,
        decoration: BoxDecoration(
          color: AppColor.btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Center(child: Text(text,style: AppStyles.styleMedium20(context),)),
      ),
    );
  }
}