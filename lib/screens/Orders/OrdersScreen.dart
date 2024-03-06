
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomDropDown/CustomDropDown.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  TextEditingController searchController =  TextEditingController();
   String initialValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
     // width: mediaQueryHelper.getWidthPercentage(50),
     color: AppColors.cardBackgroundColor,
       padding: EdgeInsets.symmetric(
        horizontal: mediaQueryHelper.getWidthPercentage(4),
        vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Orders',style: AppTypography.mainHeading.copyWith(fontWeight: FontWeight.w600),),
                SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                  SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(10),
                  height: mediaQueryHelper.getHeightPercentage(5),
                  child: CustomRoundedDropdown<String>(
                    items: [
                    DropdownMenuItem<String>(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                  ],
                  value: initialValue, 
                  onChanged: (value) {
                    print('Selected value: $value');
                    setState(() {
                      initialValue=value!;
                    });
                  },
                  ),
                  
                ),
                SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(20),
                  child: CustomSearchBar(searchController: searchController,)),
              ],
            ),
      
        ],),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}