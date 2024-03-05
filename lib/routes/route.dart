import 'package:flutter/material.dart';
import 'package:bar_management_system/screens/HomeScreen/HomeScreenPage.dart';
import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
import 'package:bar_management_system/screens/Inventory/InventoryScreen.dart';
import 'package:bar_management_system/screens/Orders/OrdersScreen.dart';
import 'package:bar_management_system/screens/Payments/PaymentsScreen.dart';
import 'package:bar_management_system/screens/Staffs/StaffsScreen.dart';
import 'package:bar_management_system/screens/Reports/ReportsScreen.dart';

Map<String, WidgetBuilder> APP_ROUTES = {
  '/homeScreenPage': (context) => HomeScreenPage(),
  '/dashBoardScreen': (context) => DashBoardScreen(),
  '/inventoryScreen': (context) => InventoryScreen(),
  '/ordersScreen': (context) => OrdersScreen(),
  '/paymentsScreen': (context) => PaymentsScreen(),
  '/staffsScreen': (context) => StaffsScreen(),
  '/reportScreen': (context) => ReportScreen(),
};



