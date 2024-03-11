import 'package:flutter/material.dart';

import '../typography/Apptypography.dart';
import '../utils/AppColors.dart';
import '../utils/MediaqueryHelper.dart';

class MenuBarComponent extends StatelessWidget {
   MenuBarComponent({Key? key,required this.assetName,required this.title,this.onTap,this.color=AppColors.whiteColor});

   final String title ;
   final String assetName;
   final void Function()? onTap;
   Color? color;
   Color? imageColor;

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return ListTile(
              leading:SizedBox(
                 height: mediaQueryHelper.getHeightPercentage(3),
                child: Image.asset(assetName,color:imageColor)),
              title: Text(title,style: AppTypography.normalSmallText.copyWith(color: color),),
              onTap: onTap,
    );
    
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       SizedBox(
    //         height: mediaQueryHelper.getHeightPercentage(3),//   assets/images/dashboard.png
    //         child: Image.asset(assetName)),
    //       SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
    //       Text(title,style: AppTypography.normalMediumText.copyWith(color: AppColors.whiteColor),),
    //     ],
    //   );
  }
}