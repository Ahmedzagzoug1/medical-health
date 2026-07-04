import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';

class CustomTextField extends StatelessWidget {
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  final String hint;
  final TextInputType? keyboardType;
  final double borderRedius;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool isPassword;

  final Function()? onTap;
  CustomTextField(
      {super.key,
      required this.hint,
      required this.keyboardType,
      this.borderRedius=13,
      this.prefixIcon,
      this.suffixIcon,
      this.onSaved,
      this.validator,
      this.isPassword = false,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    return TextFormField(
      keyboardType: keyboardType,
      onTap: onTap,
      onSaved: onSaved,
      validator: validator,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(8),
        fillColor: ColorManager.textFieldBackgroundColor,
        hintText: hint,
        hintStyle: const TextStyle(color: ColorManager.TextFieldHintColor),
        suffix: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorManager.textFieldBackgroundColor),
          borderRadius: BorderRadius.circular(borderRedius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorManager.textFieldBackgroundColor),
          borderRadius: BorderRadius.circular(borderRedius),
        ),
      ),
    );
  }
}
