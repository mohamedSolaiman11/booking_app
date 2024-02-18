import 'package:booking_app/utils/constant/colors.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width:text=="Registrera mig!"?width*.7: width*.55,
          height: height*.075,
          decoration: BoxDecoration(
            color: AppColor.btnColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child:  Center(child: MediumText(text: text,color: AppColor.textSecondaryColor,)),
        ),
      ],
    );
  }
}
