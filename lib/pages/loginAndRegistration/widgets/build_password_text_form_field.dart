import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';

class CustomPasswordTextField extends StatelessWidget {
   CustomPasswordTextField({super.key, required this.passwordController, required this.isNotBlind, required this.passwordUser2});
  final TextEditingController passwordController;
  final bool isNotBlind;
   String passwordUser2;
  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 1,
      child: CustomTextFormField(
        label: "Lösenord",
        controller: passwordController,
        textInputType:
        TextInputType.visiblePassword,
        validator: (input) {
          if (input!.isEmpty) {
            return "please fill password!!";
          } else if (input.isNotEmpty) {
            return null;
          }
        },
        hintText: '',
        // icon: Icons.visibility,
        check: isNotBlind,
        borderRadius: 15,
        onChanged: (pass) {
          passwordUser2 = pass!;
        },
      ),
    );
  }
}
