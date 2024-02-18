import 'package:booking_app/utils/constant/colors.dart';
import 'package:booking_app/widgets/custom_button.dart';
import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:booking_app/widgets/smaill_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkSwitch = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: width*.3,
        title:const Text("Registering",style: TextStyle( color: AppColor.textPrimaryColor,fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
        child: SizedBox(
          width: width*.95,
          height: height,
          child: FittedBox(
            child: Column(
              children: [
                const Text( "Fyll i dina uppgifter",style: TextStyle( color: AppColor.textPrimaryColor,fontSize: 24),),
                const SizedBox(height: 20,),
                SizedBox(
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextFormField(controller: nameController,
                          textInputType: TextInputType.text,
                          validator: (input){
                          },
                          hintText: "Fyll i ditt för- och efternamn",
                          icon: Icons.ice_skating,
                          check: true,
                          label: "För- och efternamn",
                        ),
                        const SizedBox(height: 15,),
                        CustomTextFormField(controller: nameController,
                          textInputType: TextInputType.text,
                          validator: (input){
                          },
                          hintText: "Fyll i din e-post",
                          icon: Icons.ice_skating,
                          check: true,
                          label: "E-post",
                        ),
                        const SizedBox(height: 15,),
                        CustomTextFormField(controller: nameController,
                            textInputType: TextInputType.text,
                            validator: (input){
                            },
                            hintText: "Fyll i ditt telefonnummer",
                            label: "Telefonnummer",
                            icon: Icons.ice_skating,
                            check: true),
                        const SizedBox(height: 35,),
                        CustomTextFormField(controller: nameController,
                            textInputType: TextInputType.text,
                            validator: (input){
                            },
                            hintText: "Skriv in ditt lösenord",
                            label: "Lösenord",
                    
                            icon: Icons.ice_skating,
                            check: true),
                        const SizedBox(height: 20,),
                        CustomTextFormField(controller: nameController,
                            textInputType: TextInputType.text,
                            validator: (input){
                            },
                            hintText: "Bekräfta ditt lösenord",
                            label: "Bekräfta lösenord",
                            icon: Icons.ice_skating,
                            check: true),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Switch(
                                focusColor: Colors.black,
                                activeTrackColor: Colors.grey,
                                inactiveTrackColor: Colors.white,
                                activeColor: AppColor.textPrimaryColor,
                                inactiveThumbColor: Colors.black,
                                value: checkSwitch,
                                onChanged: (input){
                                  setState(() {
                                    checkSwitch = input;
                                  });
                                }
                            ),
                            const SmallText(text: "Jag godkänner dem allmänna villkoren.", color: AppColor.textPrimaryColor),
                    
                          ],
                    
                        ),
                        const SizedBox(height: 10,),
                        const CustomButton(text: 'Registrera mig!',)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
