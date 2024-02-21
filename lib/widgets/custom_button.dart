import 'package:booking_app/utils/constant/app_style.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

import '../utils/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  const CustomButton({super.key, required this.text, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width:text=="Registrera mig!"?width*.7: width*.65,
          height: height*.07,
          decoration: BoxDecoration(
            color: AppColor.btnColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child:  Center(child: Text(text,style: AppStyles.styleMedium18(context),)),
        ),
      ],
    );
  }
}