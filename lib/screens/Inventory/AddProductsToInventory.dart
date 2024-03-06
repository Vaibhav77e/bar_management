import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

class AddProductsToInventory extends StatelessWidget {
  const AddProductsToInventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
      padding: EdgeInsets.symmetric(
      horizontal: mediaQueryHelper.getWidthPercentage(4),
      vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text('Overview',style: AppTypography.smallHeading.copyWith(fontWeight: FontWeight.w600),),
            // to do this
            // add search bar
          ]),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
          Text('Add Products',style: AppTypography.smallHeading.copyWith(
          color:AppColors.menuBarColor,
          fontWeight: FontWeight.w400),
          ),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(8)),
          Container(
            height: mediaQueryHelper.getHeightPercentage(20),
            decoration: BoxDecoration(
              color: AppColors.cardBackgroundColor
            ),
          )
        ],
      ),
    );
  }
}



//
//Container(
          //   height: mediaQueryHelper.getHeightPercentage(10),
          //   decoration: BoxDecoration(
          //     color: AppColors.cardBackgroundColor,
          //   ),
          //   child: Text('Hello'),
          // )