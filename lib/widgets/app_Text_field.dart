
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/appColors.dart';


class AppTextFieldForm extends StatelessWidget{
  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final void Function(String)? onChanged;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool? isEnabled;
  double? fontSize;
  double? cursorHeight;
  TextAlign textAlign;

  AppTextFieldForm({
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.maxLength=1000,
    this.suffixIcon,
    this.maxLines=1,
    this.isEnabled=true,
    this.textCapitalization = TextCapitalization.none,
    this.fontSize,
    this.cursorHeight,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      textAlign: textAlign,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
          FilteringTextInputFormatter.deny(
             RegExp(r'^ +'), // This regex matches one or more spaces at the beginning of the input
          )
        ],
        style: TextStyle(
          fontSize:fontSize
        ),
        cursorHeight:cursorHeight ,
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