import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
import 'package:bar_management_system/screens/Orders/OrdersScreen.dart';
import 'package:bar_management_system/screens/Payments/PaymentsScreen.dart';
import 'package:bar_management_system/screens/Reports/ReportsScreen.dart';
import 'package:bar_management_system/screens/Staffs/CreateNewStaffs.dart';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

import '../../utils/AppColors.dart';
import '../Inventory/AddProductsToInventory.dart';
import '../Inventory/EditInventoryProducts.dart';
import '../Staffs/EditStaffs.dart';


class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  Widget _currentWidget = DashBoardScreen();

  void _changeContent(Widget newContent) {
    setState(() {
      _currentWidget = newContent;
    });
  }



  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: 200, // Width of the locked sidebar
            child: Drawer(
              backgroundColor: AppColors.primaryColor,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(5),
                      child: Image.asset('assets/images/dashboard.png',)),
                    title: Text('Dashboard',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                    onTap: () {
                      _changeContent(DashBoardScreen());
                    },
                  ),
                  ExpansionTile(
                    leading: SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(5),
                      child: Image.asset('assets/images/inventory-management.png')),
                    title: Text('Inventory',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade),),
                    children:<Widget>[ 
                      ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Add Products',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                      onTap: () {
                        _changeContent(AddProductsToInventory());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit Products',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                      onTap: () {
                        _changeContent(EditInventoryProducts());
                      },
                    ),
                    ]
                  ),
                  ListTile(
                        leading:SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(5),
                      child: Image.asset('assets/images/order.png')) ,
                        title: Text('Orders',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                        onTap: () {
                          _changeContent(OrdersScreen());
                        },
                      ),
                  ListTile(
                        leading:SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(5),
                      child: Image.asset('assets/images/payment-method.png')) ,
                        title: Text('Payments',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                        onTap: () {
                          _changeContent(PaymentsScreen());
                        },
                      ),

                  ExpansionTile(
                    leading: Image.asset('assets/images/staff.png'),
                    title: Text('Staffs',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text('Add Staffs',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                        onTap: () {
                          _changeContent(CreateNewStaffs());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Edit Staffs',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                        onTap: () {
                          _changeContent(EditStaffs());
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    leading:SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(5),
                      child: Image.asset('assets/images/report.png')) ,
                        title: Text('Reports',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                        onTap: () {
                          _changeContent(ReportScreen());
                        },
                      ),
                ],
              ),
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: _currentWidget,
            ),
          ),
        ],
      ),
    );
  }
}


