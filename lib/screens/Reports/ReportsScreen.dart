import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

import '../../utils/AppColors.dart';
import '../../widgets/CustomDropDown/CustomDropDown.dart';

// enum Revenue {viewRevenue}
// enum Product {viewProduct}


class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {

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
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(5)),
      width: mediaQueryHelper.getScreenWidth(),
      decoration: BoxDecoration(
        color: AppColors.whiteColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: mediaQueryHelper.getHeightPercentage(10)),
          Text('Total Revenue'),
          SizedBox(height:mediaQueryHelper.getHeightPercentage(1),),
          Text('₹ 4,50,000',style: AppTypography.mainHeading,),
          SizedBox(height:mediaQueryHelper.getHeightPercentage(10),),
          
          // month and year dropDown
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                  } ),
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

        Row(
          children:[
          buildCardBody(
          cardTitle:'Revenue',
          cardSubtile:'₹ 2,50,000',
          incOrDec: '+ 39,900',
          imageAsset: "assets/images/reports-images/ruppe.png"
          ),
          SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
          buildCardBody(
          cardTitle:'Product Sales',
          cardSubtile:'₹ 2,50,000',
          incOrDec: '+ 39,900',
          imageAsset: "assets/images/reports-images/box.png"
          ),
          ],
          ),
          Table(
             // border: TableBorder(bottom: BorderSide(width: 0.1)),
                      children: [
                        TableRow(
                           children: [
                            buildTableRow(title:'#',bottomSpacing: 10),
                            buildTableRow(title:'Product' ,bottomSpacing: 10),
                            buildTableRow(title:'Sales' ,bottomSpacing: 10),
                            buildTableRow(title:'Revenue',bottomSpacing: 10 ),
                  ],
                ),
              ],
            )
        ],
      ),
    );
  }


  Widget buildCardBody({required String imageAsset,required String cardTitle,required String cardSubtile,
  required String incOrDec}){
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return  Container(
            padding: EdgeInsets.symmetric(
            horizontal: mediaQueryHelper.getWidthPercentage(0.5),
            vertical: mediaQueryHelper.getHeightPercentage(1)
            ),
            height: mediaQueryHelper.getHeightPercentage(20),
            width: mediaQueryHelper.getWidthPercentage(9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.textGreyColor,)
            ),
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(color: AppColors.textFieldBodyColor,
                borderRadius: BorderRadius.circular(14)),
                height: mediaQueryHelper.getHeightPercentage(3),
                child: Image.asset(imageAsset,
                color: AppColors.greyColor,)),
                 Text(cardTitle,style: AppTypography.normalSmallText.copyWith(fontWeight: FontWeight.w500),),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(cardSubtile,style: AppTypography.smallHeading.copyWith(fontWeight: FontWeight.w600),),
                      Text(incOrDec,style: AppTypography.normalSmallText.copyWith(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.w600),)
                    ],
            ),
          ],
        ),
      ]),
    );
  }


  Widget buildTableRow({
    double bottomSpacing=0,
    double topSpacing=0,
    double rightSpacing=0,
    double leftSpacing=0,
    TextAlign? textAlign,
    required String title,
  }){
    return Padding(
          padding: EdgeInsets.only(
          bottom:bottomSpacing,
          top: topSpacing,
          right: rightSpacing,
          left: leftSpacing
          ),
          child: Text(title,textAlign:textAlign,),
    );
  }
}