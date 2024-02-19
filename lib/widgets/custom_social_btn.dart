
import 'package:booking_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant/app_color.dart';

class CustomSocialButton extends StatelessWidget {
  final String image;
  final String text;
  const CustomSocialButton({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: width*.7,
            height: width*.15,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.backgroundOfNavigationBarColor),
              color: AppColor.textSecondaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(image,width: 35,),
                Center(child: SmallText(text: text,color: AppColor.textPrimaryColor,)),
              ],
            )
        ),
      ],
    );
  }
}