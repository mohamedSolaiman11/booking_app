import 'package:booking_app/utils/constant/colors.dart';
import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:booking_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text( "Fyll i dina uppgifter",style: TextStyle( color: AppColor.textPrimaryColor,fontSize: 24),),
              SizedBox(height: 10,),
              CustomTextFormField(controller: nameController,
                  textInputType: TextInputType.text,
                  validator: (input){
                  },
                  hintText: "För- och efternamn",
                  icon: Icons.ice_skating,
                  check: true)
            ],
          ),
        ),
      ),
    );
  }
}
