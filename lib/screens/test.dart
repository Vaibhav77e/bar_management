// import 'package:bar_management_system/screens/DashBoard/DashBoardScreen.dart';
// import 'package:bar_management_system/screens/Inventory/AddProductsToInventory.dart';
// import 'package:bar_management_system/screens/Inventory/EditInventoryProducts.dart';
// import 'package:bar_management_system/screens/Orders/OrdersScreen.dart';
// import 'package:bar_management_system/screens/Payments/PaymentsScreen.dart';
// import 'package:bar_management_system/screens/Reports/ReportsScreen.dart';
// import 'package:bar_management_system/screens/Staffs/CreateNewStaffs.dart';
// import 'package:bar_management_system/screens/Staffs/EditStaffs.dart';
// import 'package:flutter/material.dart';

// import '../utils/MediaqueryHelper.dart';

// class TestPage extends StatefulWidget {
//   @override
//   _TestPageState createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
//   Widget _currentWidget = DashBoardScreen();

//   void _changeContent(Widget newContent) {
//     setState(() {
//       _currentWidget = newContent;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
//     return Scaffold(
//       body: Row(
//         children: <Widget>[
//           SizedBox(
//             width: 200, // Width of the locked sidebar
//             child: Drawer(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: <Widget>[
//                   ListTile(
//                     leading: SizedBox(
//                       height: mediaQueryHelper.getHeightPercentage(5),
//                       child: Image.asset('assets/images/dashboard.png',)),
//                     title: Text('Dashboard'),
//                     onTap: () {
//                       _changeContent(DashBoardScreen());
//                     },
//                   ),
//                   ExpansionTile(
//                     leading: SizedBox(
//                       height: mediaQueryHelper.getHeightPercentage(5),
//                       child: Image.asset('assets/images/inventory-management.png')),
//                     title: Text('Inventory'),
//                     children:<Widget>[ 
//                       ListTile(
//                       leading: Icon(Icons.add),
//                       title: Text('Add Products'),
//                       onTap: () {
//                         _changeContent(AddProductsToInventory());
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.edit),
//                       title: Text('Edit Products'),
//                       onTap: () {
//                         _changeContent(EditInventoryProducts());
//                       },
//                     ),
//                     ]
//                   ),
//                   ListTile(
//                         leading:SizedBox(
//                       height: mediaQueryHelper.getHeightPercentage(5),
//                       child: Image.asset('assets/images/order.png')) ,
//                         title: Text('Orders'),
//                         onTap: () {
//                           _changeContent(OrdersScreen());
//                         },
//                       ),
//                   ListTile(
//                         leading:SizedBox(
//                       height: mediaQueryHelper.getHeightPercentage(5),
//                       child: Image.asset('assets/images/payment-method.png')) ,
//                         title: Text('Payments'),
//                         onTap: () {
//                           _changeContent(PaymentsScreen());
//                         },
//                       ),

//                   ExpansionTile(
//                     leading: Image.asset('assets/images/staff.png'),
//                     title: Text('Staffs'),
//                     children: <Widget>[
//                       ListTile(
//                         leading: Icon(Icons.add),
//                         title: Text('Add Staffs'),
//                         onTap: () {
//                           _changeContent(CreateNewStaffs());
//                         },
//                       ),
//                       ListTile(
//                         leading: Icon(Icons.edit),
//                         title: Text('Edit Staffs'),
//                         onTap: () {
//                           _changeContent(EditStaffs());
//                         },
//                       ),
//                     ],
//                   ),
//                   ListTile(
//                     leading:SizedBox(
//                       height: mediaQueryHelper.getHeightPercentage(5),
//                       child: Image.asset('assets/images/report.png')) ,
//                         title: Text('Reports'),
//                         onTap: () {
//                           _changeContent(ReportScreen());
//                         },
//                       ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: AnimatedSwitcher(
//               duration: Duration(milliseconds: 500),
//               child: _currentWidget,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }








// /**
//  * Scaffold(
//       body: Row(
//         children: <Widget>[
//           NavigationRail(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (int index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             labelType: NavigationRailLabelType.all,
//             destinations: [
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/dashboard.png')),
//                   label: Text('Dashboard'),
//               ),
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/inventory-management.png')),
//                   label: Text('Inventory'),
//               ),
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/order.png')),
//                   label: Text('Order'),
//               ),
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/payment-method.png')),
//                   label: Text('Payment'),
//               ),
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/staff.png')),
//                   label: Text('Staffs'),
//               ),
//               NavigationRailDestination(
//                 icon: SizedBox(
//                   height:  mediaQueryHelper.getHeightPercentage(3),
//                   child: Image.asset('assets/images/report.png')),
//                   label: Text('Report'),
//               )
//             ],
//           ),
//           VerticalDivider(thickness: 1, width: 1),
//           Expanded(
//             child: _pages[_selectedIndex],
//           ),
//         ],
//       ),
//     )
//  */

import 'package:flutter/material.dart';


class MyAppTest extends StatefulWidget {
  @override
  State<MyAppTest> createState() => _MyAppTestState();
}

class _MyAppTestState extends State<MyAppTest> {
  String initialValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Rounded Dropdown',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Rounded Dropdown Example'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
              value: initialValue, // Initial value
              onChanged: (value) {
                // Handle dropdown value change
                print('Selected value: $value');
                setState(() {
                  initialValue=value!;
                });
                // You can set state here to update UI or perform other actions
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CustomRoundedDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final double borderRadius;
  final Color borderColor;
  final Color dropdownColor;

  const CustomRoundedDropdown({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.borderRadius = 10.0,
    this.borderColor = Colors.grey,
    this.dropdownColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: DropdownButton<T>(
        items: items,
        value: value,
        onChanged: onChanged,
        underline: Container(),
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24.0,
        isExpanded: true,
        dropdownColor: dropdownColor,
      ),
    );
  }
}






/**
 * ConstContainerBody(
                  height: 35,
                  // 2nd card
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text('Pricing and stocks',
                      style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Base Pricing',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(labelText: 'Base Pricing', controller: priceController)
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Stock',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(
                            labelText: 'Stocks', 
                            controller: stockController)
                            ),
                          ],
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Discount',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(labelText: 'Discount', controller: discountController)
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('DiscountType',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: GestureDetector(
                               onTap: () {
                              // Show the PopupMenuButton
                              showMenu<String>(
                                context: context,
                                position: RelativeRect.fromLTRB(300, 900, 290, 0),
                                items: _categories.map((String category) {
                                  return PopupMenuItem<String>(
                                    value: category,
                                    child: Text(category),
                                  );
                                }).toList(),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedCategory = value;
                                    discountType.text = _selectedCategory;
                                  });
                                }
                              });
                            },
                              child: AppTextFieldForm(
                              labelText: 'Stocks', 
                              controller: stockController,
                              isEnabled: false,
                              suffixIcon: const Icon(Icons.keyboard_arrow_down,),
                          ),
                        )
                      ),
                    ],
                  ),
              ],)
            )
 */

