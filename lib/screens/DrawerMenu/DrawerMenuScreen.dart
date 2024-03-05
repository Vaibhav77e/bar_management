import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
import 'package:bar_management_system/screens/Inventory/InventoryScreen.dart';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/menu_bar_components.dart';


class DrawerMenuScreen extends StatefulWidget {
  DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  int i=0;

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return  Scaffold(
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            width: mediaQueryHelper.getWidthPercentage(15),
              decoration: const BoxDecoration(
                color: AppColors.menuBarColor
              ),
              child: Padding(
                padding:  const EdgeInsets.only(left:15,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
                        MenuBarComponent(title:'Dashboard',
                        assetName: 'assets/images/dashboard.png',
                        onTap: (){
                          setState(() {
                            i=0;
                          });
                        },),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        MenuBarComponent(
                        title:'Inventory',
                        assetName: 'assets/images/inventory-management.png',
                        onTap: (){
                          setState(() {
                            i=1;
                          });
                        },
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        MenuBarComponent(title:'Order',assetName: 'assets/images/order.png',),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        MenuBarComponent(title:'Payment',assetName: 'assets/images/payment-method.png',),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        MenuBarComponent(title:'Staffs',assetName: 'assets/images/staff.png',),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        MenuBarComponent(title:'Report',assetName:'assets/images/report.png'),
                      ],
                    ),
                    GestureDetector(
                    onTap: (){},
                    child: Container(child: Text('Logout',style: AppTypography.normalText.copyWith(color: AppColors.whiteColor),)))
                  ],
                ),
              ),
            ),
            // Dashboard body
            Container(
              child:Padding(
                padding:  EdgeInsets.symmetric(
                horizontal: mediaQueryHelper.getWidthPercentage(2),
                vertical:mediaQueryHelper.getHeightPercentage(2)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Dashboard',style: AppTypography.mediumHeading.copyWith(color: AppColors.menuBarColor)),
                     SizedBox(height:mediaQueryHelper.getHeightPercentage(5) ,),
                    Divider(color: AppColors.dividerColor,),
                  // cards starts here
                  Row(
                   
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('OverView',style: AppTypography.smallHeading.copyWith(
                      color: AppColors.menuBarColor,
                      fontWeight:FontWeight.w600),),
                    SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
                    Row(children: [
                      MainMenu(
                        amountText:'₹ 1,20,585',
                        backgroundColor: AppColors.lightBlueColor,
                        circularAssetName: 'assets/images/dashboard-images/revenue.png',
                        titleText: 'Today Sales',
                      ),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
                      MainMenu(
                        amountText:'₹ 75,82,585',
                        backgroundColor: AppColors.mainMenuColor2,
                        circularAssetName: 'assets/images/dashboard-images/expenses.png',
                        titleText: 'Expenses',
                      ),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
                      MainMenu(
                        amountText:'₹ 56,20,585',
                        backgroundColor: AppColors.mainMenuColor3,
                        circularAssetName: 'assets/images/dashboard-images/discount.png',
                        titleText: 'Total Sales',
                      ),
                    ],
                  ),
                    ],
                  ),
                  SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
                  // inventory card
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text('Inventory',style: AppTypography.smallHeading.copyWith(
                      color: AppColors.menuBarColor,
                      fontWeight:FontWeight.w600),),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                      Container(
                      height:mediaQueryHelper.getHeightPercentage(25),
                      width: mediaQueryHelper.getWidthPercentage(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.inventoryCardColor
                      ),
                      child:Padding(
                        padding:  EdgeInsets.symmetric(
                        horizontal: mediaQueryHelper.getWidthPercentage(1),
                        vertical: mediaQueryHelper.getHeightPercentage(2)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Total Inventory - ₹85,00,550'),
                          Text('Low Stock - Vodka'),],
                        ),
                      )
                    ),
                    ],
                  ),
                  SizedBox(width: mediaQueryHelper.getWidthPercentage(10),),
                  SizedBox(
                    height: mediaQueryHelper.getHeightPercentage(40),
                    child: Image.asset('assets/images/dashboard-images/bartender.png'),
                  ),
                  ],
                  ),
                    
                  ],
                ),
              )
            )
          ],
        ),
    );
  }
}









