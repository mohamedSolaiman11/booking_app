import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../helper/showSnackbar.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/custom_btn_full_width.dart';
import '../../widgets/small_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkSwitch = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey();
    String? nameUser, emailUser, phoneUser, passwordUser, rePasswordUser;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: width * .3,
        title: const Text(
          "Registering",
          style: TextStyle(
            color: AppColor.textPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: SizedBox(
            width: width * .95,
            height: height,
            child: FittedBox(
              child: Column(
                children: [
                  const Text(
                    "Fyll i dina uppgifter",
                    style: TextStyle(
                      color: AppColor.textPrimaryColor,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomTextFormField(
                              controller: nameController,
                              textInputType: TextInputType.text,
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "name required";
                                } else if (input.isNotEmpty) {
                                  return null;
                                }
                              },
                              hintText: "Fyll i ditt för- och efternamn",
                              check: false,
                              label: "För- och efternamn",
                              borderRadius: 15,
                              onChanged: (name) {
                                nameUser = name;
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextFormField(
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "email required";
                                } else if (input.isNotEmpty) {
                                  return null;
                                }
                              },
                              hintText: "Fyll i din e-post",
                              check: false,
                              label: "E-post",
                              borderRadius: 15,
                              onChanged: (post) {
                                emailUser = post;
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextFormField(
                              controller: phoneController,
                              textInputType: TextInputType.number,
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "phone required";
                                } else if (input.isNotEmpty) {
                                  return null;
                                }
                              },
                              hintText: "Fyll i ditt telefonnummer",
                              label: "Telefonnummer",
                              check: false,
                              borderRadius: 15,
                              onChanged: (phone) {
                                phoneUser = phone;
                              },
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            CustomTextFormField(
                              controller: passwordController,
                              textInputType: TextInputType.visiblePassword,
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "password required";
                                } else if (input.isNotEmpty) {
                                  return null;
                                }
                              },
                              hintText: "Skriv in ditt lösenord",
                              label: "Lösenord",
                              check: true,
                              borderRadius: 15,
                              onChanged: (pass) {
                                passwordUser = pass;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              controller: rePasswordController,
                              textInputType: TextInputType.text,
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "rePassword required";
                                } else if (passwordController.text !=
                                    rePasswordController.text) {
                                  return "password aren't identical";
                                } else {
                                  return null;
                                }
                              },
                              hintText: "Bekräfta ditt lösenord",
                              label: "Bekräfta lösenord",
                              check: true,
                              borderRadius: 15,
                              onChanged: (repass) {
                                rePasswordUser = repass;
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
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
                                  onChanged: (input) {
                                    setState(() {
                                      checkSwitch = input;
                                    });
                                  },
                                ),
                                const SmallText(
                                  text: "Jag godkänner dem allmänna villkoren.",
                                  color: AppColor.textPrimaryColor,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomButtonFullWidth(
                              text: 'Registrera mig!',
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  await _register();
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _register() async {
    try {
      print(emailController.text.trim());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      showSnackBar(context, "Account created success");
      _clearTextFields();
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar(context, 'weak-password');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar(context, 'The account already exists for that email.');
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }



  void _clearTextFields() {
    nameController.text = '';
    emailController.text = '';
    phoneController.text = '';
    passwordController.text = '';
    rePasswordController.text = '';
  }
}
