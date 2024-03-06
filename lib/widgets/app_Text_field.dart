
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/appColors.dart';

class AppTextFieldForm extends StatelessWidget{
  TextEditingController? controller;
  String? labelText;
  TextInputType? keyboardType;
  int? maxLength;
  void Function(String)? onChanged;
  TextCapitalization textCapitalization;
  int? maxLines;
  Widget? suffixIcon;
  bool? isEnabled;

  AppTextFieldForm({
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.maxLength=1000,
    this.suffixIcon,
    this.maxLines=1,
    this.isEnabled=true,
    this.textCapitalization = TextCapitalization.none
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
          FilteringTextInputFormatter.deny(
             RegExp(r'^ +'), // This regex matches one or more spaces at the beginning of the input
          )
        ],
        textCapitalization: textCapitalization,
        controller: controller,
        enabled:isEnabled ,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none
          ),
          filled: true,
          fillColor:AppColors.textFieldBodyColor,
        ),
        onChanged: onChanged,
        keyboardType: keyboardType,
        maxLines: maxLines,
        
      );
  }
  
}