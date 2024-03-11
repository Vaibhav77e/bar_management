import 'package:bar_management_system/extrapage.dart';
import 'package:bar_management_system/screens/Inventory/AddProductsToInventory.dart';
import 'package:bar_management_system/screens/Inventory/EditInventoryProducts.dart';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/main_menu.dart';
import 'package:flutter/material.dart';
import '../../widgets/menu_bar_components.dart';
import '../DashBoard/DashBoardScreen.dart';
import '../Orders/OrdersScreen.dart';
import '../Payments/PaymentsScreen.dart';
import '../Reports/ReportsScreen.dart';
import '../Staffs/EditStaffs.dart';


class DrawerMenuScreen extends StatefulWidget {
  DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  int i=0;

    int index=0;
     Widget _currentWidget = DashBoardScreen();

  void _changeContent(Widget newContent) {
    setState(() {
      _currentWidget = newContent;
    });
  }

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
                color: AppColors.primaryColor
              ),
              child: Padding(
                padding:  const EdgeInsets.only(left:15,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                    GestureDetector(
                    onTap: (){},
                    child: Container(child: Text('Logout',style: AppTypography.normalText.copyWith(color: AppColors.whiteColor),)))
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
            // Dashboard body
            // Container(
            //   child:Padding(
            //     padding:  EdgeInsets.symmetric(
            //     horizontal: mediaQueryHelper.getWidthPercentage(2),
            //     vertical:mediaQueryHelper.getHeightPercentage(2)
            //     ),
            //     child: Expanded(
            //         child: AnimatedSwitcher(
            //           duration: Duration(milliseconds: 200),
            //           child: _currentWidget,
            //         ),
            //     ),
            //     // child: Column(
            //     //   crossAxisAlignment: CrossAxisAlignment.start,
            //     //   children: [
            //     //      Text('Dashboard',style: AppTypography.mediumHeading.copyWith(color: AppColors.menuBarColor)),
            //     //      SizedBox(height:mediaQueryHelper.getHeightPercentage(5) ,),
            //     //     Divider(color: AppColors.dividerColor,),
            //     //   // cards starts here
            //     //   // Row(
                   
            //     //   //   children: [
            //     //   //   Column(
            //     //   //     crossAxisAlignment: CrossAxisAlignment.start,
            //     //   //     children: [
            //     //   //   Text('OverView',style: AppTypography.smallHeading.copyWith(
            //     //   //     color: AppColors.menuBarColor,
            //     //   //     fontWeight:FontWeight.w600),),
            //     //   //   SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
            //     //   //   Row(children: [
            //     //   //     MainMenu(
            //     //   //       amountText:'₹ 1,20,585',
            //     //   //       backgroundColor: AppColors.lightBlueColor,
            //     //   //       circularAssetName: 'assets/images/dashboard-images/revenue.png',
            //     //   //       titleText: 'Today Sales',
            //     //   //     ),
            //     //   //     SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
            //     //   //     MainMenu(
            //     //   //       amountText:'₹ 75,82,585',
            //     //   //       backgroundColor: AppColors.mainMenuColor2,
            //     //   //       circularAssetName: 'assets/images/dashboard-images/expenses.png',
            //     //   //       titleText: 'Expenses',
            //     //   //     ),
            //     //   //     SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
            //     //   //     MainMenu(
            //     //   //       amountText:'₹ 56,20,585',
            //     //   //       backgroundColor: AppColors.mainMenuColor3,
            //     //   //       circularAssetName: 'assets/images/dashboard-images/discount.png',
            //     //   //       titleText: 'Total Sales',
            //     //   //     ),
            //     //   //   ],
            //     //   // ),
            //     //   //   ],
            //     //   // ),
            //     //   // SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
            //     //   // // inventory card
            //     //   // Column(
            //     //   //   crossAxisAlignment: CrossAxisAlignment.start,
            //     //   //   children: [
            //     //   //  Text('Inventory',style: AppTypography.smallHeading.copyWith(
            //     //   //     color: AppColors.menuBarColor,
            //     //   //     fontWeight:FontWeight.w600),),
            //     //   //     SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
            //     //   //     Container(
            //     //   //     height:mediaQueryHelper.getHeightPercentage(25),
            //     //   //     width: mediaQueryHelper.getWidthPercentage(15),
            //     //   //     decoration: BoxDecoration(
            //     //   //       borderRadius: BorderRadius.circular(20),
            //     //   //       color: AppColors.inventoryCardColor
            //     //   //     ),
            //     //   //     child:Padding(
            //     //   //       padding:  EdgeInsets.symmetric(
            //     //   //       horizontal: mediaQueryHelper.getWidthPercentage(1),
            //     //   //       vertical: mediaQueryHelper.getHeightPercentage(2)
            //     //   //       ),
            //     //   //       child: Column(
            //     //   //         crossAxisAlignment: CrossAxisAlignment.start,
            //     //   //         children: [
            //     //   //         Text('Total Inventory - ₹85,00,550'),
            //     //   //         Text('Low Stock - Vodka'),],
            //     //   //       ),
            //     //   //     )
            //     //   //   ),
            //     //   //   ],
            //     //   // ),
            //     //   // SizedBox(width: mediaQueryHelper.getWidthPercentage(10),),
            //     //   // SizedBox(
            //     //   //   height: mediaQueryHelper.getHeightPercentage(40),
            //     //   //   child: Image.asset('assets/images/dashboard-images/bartender.png'),
            //     //   // ),
            //     //   // ],
            //     //   // ),
                    
            //     //   ],
            //     // ),
            //   )
            // )
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









