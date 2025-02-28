import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';

class CustomTextField extends StatefulWidget {
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  final String hint;
   final bool isPassword;
   CustomTextField({super.key,required this.hint, this.onSaved,this.validator,this.isPassword=false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = false;
    return TextFormField(
      onSaved:widget.onSaved ,
      validator:widget.validator,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.textFieldBackgroundColor,
        hintText: widget.hint,
 suffixIcon:!widget.isPassword?null: IconButton(
            icon: Icon(
               _passwordVisible
               ? Icons.visibility_rounded
               : Icons.visibility_off_rounded,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             }),        hintStyle: const TextStyle(color: ColorManager.TextFieldHintColor),
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