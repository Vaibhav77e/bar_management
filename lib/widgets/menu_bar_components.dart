import 'package:flutter/material.dart';

import '../typography/Apptypography.dart';
import '../utils/AppColors.dart';
import '../utils/MediaqueryHelper.dart';

class MenuBarComponent extends StatelessWidget {
   MenuBarComponent({Key? key,required this.assetName,required this.title,this.onTap});

   String title ;
   String assetName;
   void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return ListTile(
              leading:SizedBox(
                 height: mediaQueryHelper.getHeightPercentage(3),
                child: Image.asset(assetName)),
              title: Text(title,style: AppTypography.normalMediumText.copyWith(color: AppColors.whiteColor),),
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