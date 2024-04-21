import 'package:flutter/material.dart';
import 'package:recipeo/Utilities/Others/colors.dart';

class LoginCustomInputField extends StatelessWidget {
  LoginCustomInputField({super.key,
    required this.controller,
    required this.hintText,
    this.suffixWidget,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText=false,
    this.validator,
    this.onChanged,
    this.color = const Color(0xffced5d6),
    this.hintFontSize = 15,
    this.maxChar,

    //this.maxLines,
  });

  final TextEditingController controller;
  final String hintText;
  Widget? suffixWidget;
  Widget? prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  String? Function(String?) ? validator;
  Function(Object) ? onChanged;
  final Color color;
  double hintFontSize;
  int ? maxChar;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field can't be empty";
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColor.white,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 15, fontFamily: 'Inter',),
        errorStyle: const TextStyle(fontSize: 10, fontFamily: "Inter"),
        border: OutlineInputBorder( borderSide: BorderSide(color: Colors.grey.shade300 ),
          borderRadius: BorderRadius.circular(30),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        suffixIcon: suffixWidget,
        prefixIcon: prefixIcon,
      ),
    );
  }
}