import 'package:booking_app/utils/constant/const_text.dart';
import 'package:booking_app/widgets/custom_button.dart';
import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

import '../utils/constant/app_color.dart';


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
        title: const Text(
          "Verifiera uppgifter",
          style: TextStyle(
              color: AppColor.textPrimaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
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
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    ConstText.verifyText,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColor.backgroundOfNavigationBarColor),
                    maxLines: 4,

                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                controller: smsController,
                textInputType: TextInputType.number,
                validator: (input) {} ,
                hintText: "Ange verifikationskoden från SMS:et",
                icon: Icons.ice_skating,
                check: false,
                label: "Telefonverifieringskod ",
              ),
              SizedBox(height: 15,),
              CustomTextFormField(
                controller: emailController,
                textInputType: TextInputType.text,
                validator: (input) {} ,
                hintText: "Ange verifikationskoden från mejlet",
                icon: Icons.ice_skating,
                check: true,
                label: "E-postverifieringskod ",
              ),
              SizedBox(height: 20,),
              CustomButton(text: "Verifiera"),
              SizedBox(height: 40,),
              MediumText(text:"Fick du inte koden?" , color: AppColor.btnColor),
              SizedBox(height: 10,),
              MediumText(text:"Återsänd koden" , color: AppColor.btnColor),

            ],
          ),
        ),
      ),
    );
  }
}

//Fick du inte koden?
//Återsänd koden