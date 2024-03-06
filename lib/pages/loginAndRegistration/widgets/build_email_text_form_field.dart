import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';

class CustomEmailTextField extends StatelessWidget {
  const CustomEmailTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.textInputType,
      required this.textWillAppearInNotVaildate});
  final TextEditingController controller;
  final String label, textWillAppearInNotVaildate;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    String newInput;
    return Flexible(
      flex: 1,
      child: CustomTextFormField(
        label: label,
        controller: controller,
        textInputType: textInputType,
        validator: (input) {
          if (input == null || input.isEmpty) {
            return textWillAppearInNotVaildate;
          }
          return null;
        },
        hintText: '',
        // icon: Icons.remove_red_eye,
        check: false, borderRadius: 15,
        onChanged: (input) {
          newInput = input!;
        },
      ),
    );
  }
}
