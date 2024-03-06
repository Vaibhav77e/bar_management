import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
import 'package:bar_management_system/screens/Orders/OrdersScreen.dart';
import 'package:bar_management_system/screens/Payments/PaymentsScreen.dart';
import 'package:bar_management_system/screens/Reports/ReportsScreen.dart';
import 'package:bar_management_system/screens/Staffs/CreateNewStaffs.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

import '../Inventory/AddProductsToInventory.dart';


class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashBoardScreen(),
    AddProductsToInventory(),
    OrdersScreen(),
    PaymentsScreen(),
    CreateNewStaffs(),
    ReportScreen()
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/dashboard.png')),
                  label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/inventory-management.png')),
                  label: Text('Inventory'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/order.png')),
                  label: Text('Order'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/payment-method.png')),
                  label: Text('Payment'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/staff.png')),
                  label: Text('Staffs'),
              ),
              NavigationRailDestination(
                icon: SizedBox(
                  height:  mediaQueryHelper.getHeightPercentage(3),
                  child: Image.asset('assets/images/report.png')),
                  label: Text('Report'),
              )
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}


