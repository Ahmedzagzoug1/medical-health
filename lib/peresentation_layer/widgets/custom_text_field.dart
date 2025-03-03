import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';

class CustomTextField extends StatelessWidget {
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  final String hint;
  final TextInputType? keyboardType;
   Widget? suffixIcon;
    bool isPassword;
    
 final  Function()? onTap;
   CustomTextField({super.key,required this.hint,required this.keyboardType,this.suffixIcon, this.onSaved,this.validator,
   this.isPassword=false,
   this.onTap});
  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = false;
    return TextFormField(
      keyboardType: keyboardType,
      onTap:onTap ,
      onSaved: onSaved ,
      validator: validator,
      obscureText:  isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.textFieldBackgroundColor,
        hintText:  hint,
         hintStyle: const TextStyle(color: ColorManager.TextFieldHintColor),
         suffix: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide:const BorderSide(color: ColorManager.textFieldBackgroundColor),
          borderRadius: BorderRadius.circular(13),
        ),
        focusedBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: ColorManager.textFieldBackgroundColor),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}