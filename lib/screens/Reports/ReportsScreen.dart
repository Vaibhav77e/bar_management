import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

import '../../utils/AppColors.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(5)),
      width: mediaQueryHelper.getScreenWidth(),
      decoration: BoxDecoration(
        color: AppColors.whiteColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: mediaQueryHelper.getHeightPercentage(10)),
          Text('Total Revenue')
        ],
      ),
    );
  }
}