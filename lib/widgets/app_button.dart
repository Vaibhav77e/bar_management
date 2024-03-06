import 'package:flutter/material.dart';
import '../typography/Apptypography.dart';
import '../utils/AppColors.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  void Function()? onTap;
  Color? color;
  Color? buttonColor;
  String text;
  double? fontSize;
  double height;
  
  AppButton({
    required this.onTap,
    required this.text,
    this.color = AppColors.indigo_800,
    this.buttonColor = AppColors.indigo_300,
    this.fontSize = 20,
    this.height = 40,
  });
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: onTap,
      child: Container(
      alignment: Alignment.center,
      height:height,
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: buttonColor
      ),
      child:Text(text,
      style: AppTypography.smallHeading.copyWith(color: color,
      fontSize: fontSize))
      ),
    );
  }
  
}