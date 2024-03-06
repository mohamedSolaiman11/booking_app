import 'package:booking_app/utils/constant/const_text.dart';
import 'package:booking_app/widgets/custom_button.dart';
import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';
import '../../utils/constant/app_style.dart';
import '../../widgets/custom_btn_full_width.dart';

class VerifyingPhoneAndAddress extends StatefulWidget {
  const VerifyingPhoneAndAddress({super.key});

  @override
  State<VerifyingPhoneAndAddress> createState() =>
      _VerifyingPhoneAndAddressState();
}

class _VerifyingPhoneAndAddressState extends State<VerifyingPhoneAndAddress> {
  TextEditingController emailController = TextEditingController();
  TextEditingController smsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        leadingWidth: width * .3,
        title:  Text(
          "Verifiera uppgifter",
          style: AppStyles.styleSemiBold24(context)
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height * .15,
                // Provide a width for the container
                child:  Align(
                  alignment: Alignment.center,
                  child: Text(
                    ConstText.verifyText,
                    style: AppStyles.styleRegular18(context),
                    maxLines: 4,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                controller: smsController,
                textInputType: TextInputType.number,
                validator: (input) {},
                hintText: "Ange verifikationskoden från SMS:et",
                // icon: Icons.ice_skating,
                check: false,
                label: "Telefonverifieringskod ",
                borderRadius: 15,
                onChanged: (input) {  },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: emailController,
                textInputType: TextInputType.text,
                validator: (input) {},
                hintText: "Ange verifikationskoden från mejlet",
                // icon: Icons.ice_skating,
                check: true,
                label: "E-postverifieringskod ",
                borderRadius: 15,
                onChanged: (input) {  },
              ),
              const SizedBox(
                height: 15,
              ),
               CustomButtonFullWidth(text: "Verifiera",
                onTap: ()async {
                return const SizedBox();
                },),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text("Fick du inte koden?",style: AppStyles.styleMedium14(context),)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
             Row(
               children: [
                 Text("Återsänd koden",style: AppStyles.styleSemiBold16(context),)
                 // const MediumText(
                 //     text: "Återsänd koden", color: AppColor.btnColor),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}

//Fick du inte koden?
//Återsänd koden
