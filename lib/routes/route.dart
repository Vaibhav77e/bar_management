import 'package:flutter/material.dart';
import 'package:bar_management_system/screens/HomeScreen/HomeScreenPage.dart';
import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
import 'package:bar_management_system/screens/Inventory/AddProductsToInventory.dart';
import 'package:bar_management_system/screens/Orders/OrdersScreen.dart';
import 'package:bar_management_system/screens/Payments/PaymentsScreen.dart';
import 'package:bar_management_system/screens/Staffs/CreateNewStaffs.dart';
import 'package:bar_management_system/screens/Reports/ReportsScreen.dart';

Map<String, WidgetBuilder> APP_ROUTES = {
  '/homeScreenPage': (context) => HomeScreenPage(),
  '/dashBoardScreen': (context) => DashBoardScreen(),
  '/addProductsToInventory': (context) => AddProductsToInventory(),
  '/ordersScreen': (context) => OrdersScreen(),
  '/paymentsScreen': (context) => PaymentsScreen(),
  '/createNewStaffs': (context) => CreateNewStaffs(),
  '/reportScreen': (context) => ReportScreen(),
};



