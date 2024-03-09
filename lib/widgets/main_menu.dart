import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:flutter/material.dart';

import '../utils/AppColors.dart';
import '../utils/MediaqueryHelper.dart';


// ignore: must_be_immutable
class MainMenu extends StatelessWidget {
  
   MainMenu({Key? key,
      required this.amountText,
      required this.backgroundColor,
      required this.circularAssetName,
      this.textBodyColor=AppColors.menuBarColor,
      this.textLightColor=AppColors.textGreyColor,
      required this.titleText,
      this.onPressed,
   });

   Color? backgroundColor;
   String circularAssetName;
   void Function()? onPressed;
   Color? textLightColor;
   Color? textBodyColor;
   String titleText;
   String amountText;


  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
        height:mediaQueryHelper.getHeightPercentage(20),
        width: mediaQueryHelper.getWidthPercentage(9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor
        ),
        child:Padding(
          padding:  EdgeInsets.symmetric(
          horizontal: mediaQueryHelper.getWidthPercentage(1),
          vertical: mediaQueryHelper.getHeightPercentage(2)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                CircleAvatar(
                  radius: 8,
                  child: Image.asset(circularAssetName),
                ),
                IconButton(onPressed: onPressed, icon:  Icon(Icons.more_horiz,size: 15,))
              ]),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(titleText,
              style: AppTypography.normalSmallText.copyWith(color: textLightColor),),
              SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
              Text(amountText,
              style: AppTypography.normalText.copyWith(color: textBodyColor,fontWeight:FontWeight.bold),),
                ]
              )
            ],
          ),
        )
      );
  }
}