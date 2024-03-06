
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  TextEditingController searchController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
       padding: EdgeInsets.symmetric(
        horizontal: mediaQueryHelper.getWidthPercentage(4),
        vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Orders',style: AppTypography.smallHeading.copyWith(fontWeight: FontWeight.w600),),
                SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(20),
                 
                  child: CustomSearchBar(searchController: searchController,))
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