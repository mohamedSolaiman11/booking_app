import 'package:booking_app/utils/constant/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/big_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_social_btn.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/medium_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isNotBlind = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: width * 0.6,
                    height: height * 0.18,
                    color: Colors.white,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                          width: width * 0.6,
                          height: height * 0.18,
                          child: Image.asset("assets/images/book_me.png")),
                    ),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.backgroundOfNavigationBarColor
                              .withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Logga in",
                                style: AppStyles.styleSemiBold36(context),
                              ),
                              // const BigText(text: 'Logga in'),
                              const SizedBox(height: 5),
                              Text("Vänligen fyll i e-post och lösenord.",
                                  style: AppStyles.styleRegular14(context)),
                              const SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: width,
                                    height: height * .15,
                                    child: Column(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: CustomTextFormField(
                                            label: "E-post",
                                            controller: emailController,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (input) {
                                              if (input!.isEmpty) {
                                                return "please fill email!!";
                                              } else {
                                                // Use proper email validation
                                                return null;
                                              }
                                            },
                                            hintText: '',
                                            icon: Icons.remove_red_eye,
                                            check: true, borderRadius: 15,
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Flexible(
                                          flex: 1,
                                          child: CustomTextFormField(
                                            label: "Lösenord",
                                            controller: passwordController,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            validator: (input) {
                                              if (input!.isEmpty) {
                                                return "please fill password!!";
                                              } else {
                                                // Use proper password validation
                                                return null;
                                              }
                                            },
                                            hintText: '',
                                            icon: Icons.visibility,
                                            check: isNotBlind, borderRadius: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 18),
                              SizedBox(
                                width: width,
                                height: height * .065,
                                child: const CustomButton(
                                  text: "Logga in", borderRadius: 40,
                                ),
                              ),
                              const SizedBox(height: 8),
                              // Center(
                              //   child: Text(
                              //     "Eller",
                              //     style: AppStyles.styleRegular16(context),
                              //   ),
                              // ),
                              const MediumText(
                                  text: "Eller", color: AppColor.btnColor),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: width,
                                height: height * .25,
                                child: Column(
                                  children: [
                                    const Flexible(
                                      flex: 1,
                                      child: CustomSocialButton(
                                        image: "assets/images/google-icon.svg",
                                        text: 'Fortsätt med Google',
                                      ),
                                    ),
                                    SizedBox(height: height * .012),
                                    const Flexible(
                                      flex: 1,
                                      child: CustomSocialButton(
                                        image: "assets/images/apple-icon.svg",
                                        text: 'Fortsätt med Apple',
                                      ),
                                    ),
                                    SizedBox(height: height * .012),
                                    const Flexible(
                                      flex: 1,
                                      child: CustomSocialButton(
                                        image:
                                            "assets/images/facebook-icon.svg",
                                        text: 'Fortsätt med Facebook',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Har du inget konto än? ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColor.textPrimaryColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Registrera här',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.btnColor),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -12,
                          top: -30,
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child:   Lottie.asset("assets/animation/lottie.json")),

                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
