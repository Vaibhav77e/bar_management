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

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  @override
  _MyImagePickerState createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(
      source:  ImageSource.gallery,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

