import 'package:booking_app/helper/social_auth.dart';
import 'package:booking_app/pages/home.dart';
import 'package:booking_app/pages/loginAndRegistration/sign_up.dart';
import 'package:booking_app/pages/loginAndRegistration/widgets/build_email_text_form_field.dart';
import 'package:booking_app/utils/constant/app_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../helper/go_to_page.dart';
import '../../helper/go_to_page_only.dart';
import '../../helper/showSnackbar.dart';
import '../../utils/constant/app_color.dart';
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
  bool isNotBlind = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? emailUser2, passwordUser2;
  bool inAsyncCallGoogle = false;
  bool inAsyncCallApple = false;
  bool inAsyncCallFacebook = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _fKey = GlobalKey();

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
                SizedBox(height: height*.02,),
                _buildLogoSection(width, height),
                Flexible(
                  flex: 6,
                  child: Container(
                    width: width,
                    height: height * .82,
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
                              _buildLoginText(context),
                              // const BigText(text: 'Logga in'),
                              const SizedBox(height: 5),
                              _buildLoginSubText(context),
                              const SizedBox(
                                height: 15,
                              ),
                              buildCustomForm(_fKey, width, height),
                              const SizedBox(height: 18),
                              buildCustomLoginButton(
                                  width, height, _fKey, context),
                              const SizedBox(height: 8),

                              const MediumText(
                                  text: "Eller", color: AppColor.btnColor),
                              const SizedBox(height: 10),
                              buildCustom3SocialButton(width, height, context),
                              const SizedBox(height: 15),
                              buildFooterText(context)
                            ],
                          ),
                        ),
                        buildLottieAnimation(),
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

  Positioned buildLottieAnimation() {
    return Positioned(
                        right: -12,
                        top: -30,
                        child: SizedBox(
                            width: 120,
                            height: 120,
                            child:
                                Lottie.asset("assets/animation/lottie.json")),
                      );
  }

  Align buildFooterText(BuildContext context) {
    return Align(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {
                                  goToPage(context, const SignUp());
                                },
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
                              ),
                            );
  }

  SizedBox buildCustom3SocialButton(
      double width, double height, BuildContext context) {
    return SizedBox(
      width: width,
      height: height * .25,
      child: Column(
        children: [
          buildGoogleButton(context),
          SizedBox(height: height * .012),
          buildAppleButton(context),
          SizedBox(height: height * .012),
          buildFacebookButton(context),
        ],
      ),
    );
  }

  Flexible buildFacebookButton(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ModalProgressHUD(
        inAsyncCall: inAsyncCallFacebook,
        opacity: .3,
        color: Colors.white,
        dismissible: true,
        blur: 4,
        progressIndicator: const CircularProgressIndicator(
          color: AppColor.btnColor,
        ),
        child: CustomSocialButton(
          image: "assets/images/facebook-icon.svg",
          text: 'Fortsätt med Facebook',
          onTap: () async {
            inAsyncCallFacebook = true;
            setState(() {});
            if (mounted) {
              await SocialAuth.signInWithFacebook();
              inAsyncCallFacebook = false;
              setState(() {});
              showSnackBar(context, "Success Login by facebook");
              goToPageOnly(context, const HomePage());
            }
          },
        ),
      ),
    );
  }

  Flexible buildAppleButton(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ModalProgressHUD(
        inAsyncCall: inAsyncCallApple,
        opacity: .3,
        color: Colors.white,
        dismissible: true,
        blur: 4,
        progressIndicator: const CircularProgressIndicator(
          color: AppColor.btnColor,
        ),
        child: CustomSocialButton(
          image: "assets/images/apple-icon.svg",
          text: 'Fortsätt med Apple',
          onTap: () async {
            inAsyncCallApple = true;
            setState(() {});
            if (mounted) {
              await SocialAuth.signInWithGoogle();
              inAsyncCallApple = false;
              setState(() {});
              showSnackBar(context, "Success Login by google");
              goToPageOnly(context, const HomePage());
            }
          },
        ),
      ),
    );
  }

  Flexible buildGoogleButton(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ModalProgressHUD(
        inAsyncCall: inAsyncCallGoogle,
        opacity: .3,
        color: Colors.white,
        dismissible: true,
        blur: 4,
        progressIndicator: const CircularProgressIndicator(
          color: AppColor.btnColor,
        ),
        child: CustomSocialButton(
          image: "assets/images/google-icon.svg",
          text: 'Fortsätt med Google',
          onTap: () async {
            inAsyncCallGoogle = true;
            setState(() {});
            if (mounted) {
              await SocialAuth.signInWithGoogle();
              inAsyncCallGoogle = false;
              setState(() {});
              showSnackBar(context, "Success Login by google");
              goToPageOnly(context, const HomePage());
            }
          },
        ),
      ),
    );
  }

  Form buildCustomForm(
      GlobalKey<FormState> _fKey, double width, double height) {
    return Form(
      key: _fKey,
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height * .15,
            child: Column(
              children: [
                CustomEmailTextField(
                  controller: emailController,
                  label: 'E-post',
                  textInputType: TextInputType.emailAddress,
                  textWillAppearInNotVaildate: 'invalid email, try again',
                ),
                const SizedBox(height: 15),
                CustomEmailTextField(
                  controller: passwordController,
                  label: 'Lösenord',
                  textInputType: TextInputType.visiblePassword,
                  textWillAppearInNotVaildate: 'invalid password, try again',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox buildCustomLoginButton(double width, double height,
      GlobalKey<FormState> _fKey, BuildContext context) {
    return SizedBox(
      width: width,
      height: height * .065,
      child: CustomButton(
        text: "Logga in",
        borderRadius: 40,
        onTap: () async {
          if (_fKey.currentState!.validate()) {
            try {
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailUser2!,
                password: passwordUser2!,
              );
              showSnackBar(context, "Login Success");
              _clearTextFields1();
              // goToPage(const HomePage());
              goToPageOnly(context, const HomePage());
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                showSnackBar(context, 'user-not-found');
              } else if (e.code == 'wrong-password') {
                showSnackBar(context, 'wrong password');
              } else {
                print(e.code);
                // Show a generic error message for other errors
                showSnackBar(context, e.code);
              }
            }
          }
        },
      ),
    );
  }

  Text _buildLoginSubText(BuildContext context) {
    return Text("Vänligen fyll i e-post och lösenord.",
        style: AppStyles.styleRegular14(context));
  }

  Text _buildLoginText(BuildContext context) {
    return Text(
      "Logga in",
      style: AppStyles.styleSemiBold36(context),
    );
  }

  Widget _buildLogoSection(double width, double height) {
    return Flexible(
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
    );
  }

  void _clearTextFields1() {
    // emailController.clear();
    // passwordController.clear();
  }
}
