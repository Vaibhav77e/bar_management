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

  bool isInventoryExpanded = false;
  bool isStaffsExpanded = false;


  int index=0;

  void _changeContent(Widget newContent) {
    setState(() {
      _currentWidget = newContent;
    });
  }



  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      backgroundColor: AppColors.cardBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 250, // Width of the locked sidebar
            child: Drawer(
              backgroundColor: AppColors.primaryColor,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
                  TileComponent(onTap:() {
                      _changeContent(DashBoardScreen());
                      index=0;
                      //print("index : $index");
                    },
                    assetImage: 'assets/images/dashboard.png',
                    height: 3,
                    title: 'Dashboard',
                    textColor: index==0?AppColors.testColor:AppColors.whiteColor,
                    imageColor: index==0?AppColors.testColor:AppColors.whiteColor
                  ),
                  ExpansionTile(
                    collapsedIconColor:AppColors.whiteColor,
                    iconColor :AppColors.whiteColor,
                    onExpansionChanged: (_){
                      // setState(() {
                      //   isInventoryExpanded=!isInventoryExpanded;
                      // });
                    },
                    collapsedTextColor:AppColors.testColor,
                    leading: Container(
                    padding: EdgeInsets.all(1),
                    height: mediaQueryHelper.getHeightPercentage(4),
                    child: Image.asset('assets/images/inventory-management.png',
                    color:AppColors.whiteColor)),
                    title: Text('Inventory',style: AppTypography.normalSmallText.copyWith(
                    color:  AppColors.whiteColor,
                    fontSize: 13,
                    overflow: TextOverflow.fade),),
                    children:<Widget>[
                      TileComponent(
                        onTap:() {
                          _changeContent(AddProductsToInventory());
                          index=1;
                          //print("index : $index");
                        },
                        assetImage: 'assets/images/add.png',
                        height: 3,
                        title: 'Add Products',
                        textColor: index==1?AppColors.testColor:AppColors.expansionTileColor,
                        imageColor: index==1?AppColors.testColor:AppColors.expansionTileColor
                      ),
                      TileComponent(
                        onTap:() {
                          _changeContent(EditInventoryProducts());
                          index=2;
                          //print("index : $index");
                        },
                        assetImage: 'assets/images/edit.png',
                        height: 3,
                        title: 'Edit Products',
                        textColor: index==2?AppColors.testColor:AppColors.expansionTileColor,
                        imageColor: index==2?AppColors.testColor:AppColors.expansionTileColor
                      ),
                    ]
                  ),
                  SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                  SizedBox(width: mediaQueryHelper.getHeightPercentage(2),),
                  TileComponent(
                    onTap:() {
                      _changeContent(OrdersScreen());
                      index=3;
                      //print("index : $index");
                    },
                    assetImage: 'assets/images/order.png',
                    height: 4,
                    title: 'Orders',
                    textColor: index==3?AppColors.testColor:AppColors.whiteColor,
                    imageColor: index==3?AppColors.testColor:AppColors.whiteColor
                  ),
                  TileComponent(
                    onTap:() {
                      _changeContent(PaymentsScreen());
                      index=4;
                      //print("index : $index");
                    },
                    assetImage: 'assets/images/payment-method.png',
                    height: 4,
                    title: 'Payments',
                    textColor: index==4?AppColors.testColor:AppColors.whiteColor,
                    imageColor: index==4?AppColors.testColor:AppColors.whiteColor
                  ),
                  ExpansionTile(
                    collapsedIconColor:AppColors.whiteColor,
                    iconColor :AppColors.whiteColor,
                    onExpansionChanged: (_){
                    //  setState(() {
                    //     isStaffsExpanded= !isStaffsExpanded;
                    //  });
                    },
                    leading: Container(
                    padding: EdgeInsets.all(1),
                    height: mediaQueryHelper.getHeightPercentage(5),
                    child: Image.asset('assets/images/staff.png',
                    color: AppColors.whiteColor)),
                    title: Text('Staffs',
                    style: AppTypography.normalSmallText.copyWith(
                    color:AppColors.whiteColor,
                    overflow: TextOverflow.fade,
                    fontSize:13,
                    )),
                    children: <Widget>[
                      TileComponent(
                        onTap:() {
                          _changeContent(CreateNewStaffs());
                          index=5;
                          //print("index : $index");
                        },
                        assetImage: 'assets/images/add.png',
                        height: 3,
                        title: 'Add Staffs',
                        textColor: index==5?AppColors.testColor:AppColors.expansionTileColor,
                        imageColor: index==5?AppColors.testColor:AppColors.expansionTileColor
                      ),
                      TileComponent(
                        onTap:() {
                          _changeContent(EditStaffs());
                          index=6;
                          //print("index : $index");
                        },
                        assetImage: 'assets/images/edit.png',
                        height: 3,
                        title: 'Edit Staffs',
                        textColor: index==6?AppColors.testColor:AppColors.expansionTileColor,
                        imageColor: index==6?AppColors.testColor:AppColors.expansionTileColor
                      ),
                    ],
                  ),
                  SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                  TileComponent(
                    onTap:() {
                      _changeContent(ReportScreen());
                      index=7;
                      //print("index : $index");
                    },
                    assetImage: 'assets/images/report.png',
                    height: 4,
                    title: 'Reports',
                    textColor: index==7?AppColors.testColor:AppColors.whiteColor,
                    imageColor: index==7?AppColors.testColor:AppColors.whiteColor
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: _currentWidget,
            ),
          ),
        ],
      ),
    );
  }

  Widget TileComponent({double height=4,Color? imageColor=AppColors.whiteColor,Color? textColor=AppColors.whiteColor,
  required void Function()? onTap,required String title,required String assetImage, 
  double? fontSize=12,
  Color? selectedColor,FontWeight? fontWeight = FontWeight.normal,}){
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Padding(
      padding:  EdgeInsets.only(bottom:mediaQueryHelper.getHeightPercentage(2)),
      child: ListTile(
        selectedColor:selectedColor,
        leading:SizedBox(
        height: mediaQueryHelper.getHeightPercentage(height),
        child: Container(
        padding: EdgeInsets.all(1),
        height: mediaQueryHelper.getHeightPercentage(10),
        child: Image.asset(assetImage,color: imageColor))) ,
        title: Row(
          children: [
           SizedBox(width: mediaQueryHelper.getWidthPercentage(0.5)),
            Text(title,
            style: AppTypography.normalSmallText.copyWith(
            color: textColor,
            overflow: TextOverflow.fade,fontSize:fontSize,
            fontWeight:fontWeight
            )),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}


