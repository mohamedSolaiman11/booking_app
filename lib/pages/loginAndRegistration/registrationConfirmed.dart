import 'package:booking_app/utils/constant/app_style.dart';
import 'package:booking_app/utils/constant/const_text.dart';
import 'package:booking_app/utils/constant/size_config.dart';
import 'package:booking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegistrationConfirmed extends StatelessWidget {
  const RegistrationConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Registrering lyckad!",
                      style: AppStyles.styleSemiBold24(context),
                    ),
                    SizedBox(
                      height: height * .015,
                    ),
                    Text(
                      ConstText.regConfirmText,
                      style: AppStyles.styleRegular16(context),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height:height * .00015,
                    ),
                    SizedBox(
                      width: width,
                      height: height * .3,
                      child: Lottie.asset("assets/animation/celepration.json"),
                    ),
                     CustomButton(
                      text: "Återgå till inloggning",
                      borderRadius: 10, onTap: () async{

                     },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
