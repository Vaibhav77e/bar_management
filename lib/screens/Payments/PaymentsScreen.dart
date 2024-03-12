import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomDropDown/CustomDropDown.dart';
import 'adddialog.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {

  TextEditingController searchController = TextEditingController();

  List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

String initialMonth = 'January';

List<String> years = List.generate(100, (index) =>(2022+index).toString() );

String initialYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal:mediaQueryHelper.getWidthPercentage(2),
          vertical:mediaQueryHelper.getHeightPercentage(2),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Payment',style: AppTypography.mediumHeading,),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
          Row(
            children: [
              SizedBox(
              width: mediaQueryHelper.getWidthPercentage(20),
              child: CustomSearchBar(searchController: searchController)),
            ],
          ),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
            // month and year dropDown
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: showAddDialog,
                child: Container(
                 padding:EdgeInsets.symmetric(
                  horizontal:mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(1)
                 ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textGreyColor),
                  borderRadius:BorderRadius.circular(24)
                ),
                child: Row(
                  children: [
                    Icon(Icons.add,size: 18,),
                    Text('Add',style:AppTypography.normalText),
                  ],
                ),),
              ),
              SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
              // Month
              SizedBox(
                width: mediaQueryHelper.getWidthPercentage(11),
                child: CustomRoundedDropdown(
                  height: mediaQueryHelper.getHeightPercentage(0.6),
                  borderRadius: 24,
                  value: initialMonth,
                  items: months.map<DropdownMenuItem<String>>(
                  (val) => DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: val,
                    child: Text(val),
                  )).toList(),
                  onChanged:(newValue){
                    setState(() {
                      initialMonth = newValue!;
                    });
                  }),
              ),
              SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
              // Year
              SizedBox(
                width: mediaQueryHelper.getWidthPercentage(9),
                child: CustomRoundedDropdown(
                  height: mediaQueryHelper.getHeightPercentage(0.6),
                  borderRadius: 24,
                  value: initialYear,
                  items: years.map<DropdownMenuItem<String>>(
                  (val) => DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: val,
                    child: Text(val),
                  )).toList(),
                  onChanged:(newYear){
                    setState(() {
                      initialYear = newYear!;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      )
    );
  }


  void showAddDialog(){
    showDialog(context: context, builder: (context)=>AddDialogButton());
  }
}