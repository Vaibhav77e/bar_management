import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Invoice'),
        SizedBox(height: mediaQueryHelper.getHeightPercentage(10),),
        Row(
          children: [
            Text('From')
          ],
        )
      ],)
    );
  }
}