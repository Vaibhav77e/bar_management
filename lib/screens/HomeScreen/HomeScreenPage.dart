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
                  TileComponent(onTap:() {
                      _changeContent(DashBoardScreen());
                    },assetImage: 'assets/images/dashboard.png',
                    height: 3,
                    title: 'Dashboard'
                  ),
                  ExpansionTile(
                    leading: SizedBox(
                      height: mediaQueryHelper.getHeightPercentage(4),
                      child: Image.asset('assets/images/inventory-management.png',color: AppColors.whiteColor,)),
                    title: Text('Inventory',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade),),
                    children:<Widget>[
                      TileComponent(
                        onTap:() {
                          _changeContent(AddProductsToInventory());
                        },
                        assetImage: 'assets/images/add.png',
                        height: 3,
                        title: 'Add Products'
                      ),
                      TileComponent(
                        onTap:() {
                          _changeContent(EditInventoryProducts());
                        },
                        assetImage: 'assets/images/edit.png',
                        height: 3,
                        title: 'Edit Products'
                      ),
                    ]
                  ),
                  SizedBox(width: mediaQueryHelper.getHeightPercentage(2),),
                  TileComponent(
                    onTap:() {
                      _changeContent(OrdersScreen());
                    },
                    assetImage: 'assets/images/order.png',
                    height: 4,
                    title: 'Orders'
                  ),
                  TileComponent(
                    onTap:() {
                      _changeContent(PaymentsScreen());
                    },
                    assetImage: 'assets/images/payment-method.png',
                    height: 4,
                    title: 'Payments'
                  ),
                  ExpansionTile(
                    leading: Image.asset('assets/images/staff.png',color: AppColors.whiteColor),
                    title: Text('Staffs',style: AppTypography.normalSmallText.copyWith(color: AppColors.whiteColor,overflow: TextOverflow.fade)),
                    children: <Widget>[
                      TileComponent(
                        onTap:() {
                          _changeContent(CreateNewStaffs());
                        },
                        assetImage: 'assets/images/add.png',
                        height: 3,
                        title: 'Add Staffs'
                      ),
                      TileComponent(
                        onTap:() {
                          _changeContent(EditStaffs());
                        },
                        assetImage: 'assets/images/edit.png',
                        height: 3,
                        title: 'Edit Staffs'
                      ),
                    ],
                  ),
                  SizedBox(width: mediaQueryHelper.getHeightPercentage(2),),
                  TileComponent(
                    onTap:() {
                      _changeContent(ReportScreen());
                    },
                    assetImage: 'assets/images/report.png',
                    height: 4,
                    title: 'Reports'
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

  Widget TileComponent({double height=4,Color? imageColor=AppColors.whiteColor,Color? textColor=AppColors.whiteColor,
  required void Function()? onTap,required String title,required String assetImage}){
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Padding(
      padding:  EdgeInsets.only(bottom:mediaQueryHelper.getHeightPercentage(2)),
      child: ListTile(
        leading:SizedBox(
        height: mediaQueryHelper.getHeightPercentage(height),
        child: Image.asset(assetImage,color: imageColor)) ,
        title: Text(title,
        style: AppTypography.normalSmallText.copyWith(color: textColor,overflow: TextOverflow.fade)),
        onTap: onTap,
      ),
    );
  }
}


