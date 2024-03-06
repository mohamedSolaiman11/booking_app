import 'package:flutter/material.dart';
import '../utils/constant/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  bool? check;
  final double borderRadius;
  final String? label;
  final String hintText;
  final void Function(String? input) onChanged;
  final String? Function(String? input) validator;
  final TextEditingController controller;
  final TextInputType textInputType;

  CustomTextFormField({
    Key? key,
    this.label,
    required this.controller,
    required this.textInputType,
    required this.validator,
    required this.hintText,
    required this.check,
    required this.borderRadius,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return TextFormField(
      key: formKey,
      onChanged: widget.onChanged, // Use widget.onChanged here
      keyboardType: widget.textInputType,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.check!, // Use widget.check to determine visibility
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: widget.hintText == "Lösenord" || widget.label!.endsWith("d")
              ? InkWell(
            onTap: () {
              print(widget.check);
              setState(() {
                widget.check = !widget.check!;
              });
              print(widget.check);
            },
            child: widget.check!
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          )
              : const SizedBox(),
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 28, vertical: 19),
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: AppColor.backgroundOfCalender,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: AppColor.btnColor,
          ),
        ),
      ),
    );
  }
}
