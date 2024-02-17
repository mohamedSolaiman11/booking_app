import 'package:booking_app/utils/constant/colors.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width*.55,
          height: height*.07,
          decoration: BoxDecoration(
            color: AppColor.btnColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(child: MediumText(text: "Logga in",color: AppColor.textSecondaryColor,)),
        ),
      ],
    );
  }
}
