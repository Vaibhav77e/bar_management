
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

  AppTextFieldForm({
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.maxLength=1000,
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
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none
          ),
          filled: true,
          fillColor:AppColors.indigo_300,
        ),
        onChanged: onChanged,
        keyboardType: keyboardType,
      );
  }
  
}