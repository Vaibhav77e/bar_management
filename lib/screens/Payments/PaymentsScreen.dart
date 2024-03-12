import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:bar_management_system/widgets/app_Text_field.dart';
import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomDropDown/CustomDropDown.dart';
import 'ProceedToCheckOutDialog.dart';


class PaymentsScreen extends StatefulWidget {
  PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  TextEditingController searchController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  

  String initialValue = '330 mL';
  List<String> availableQuantity = ['650 mL', '330 mL'];
  String qty = '1';

  List<String> numberofQty = List.generate(10,(index)=>(1+index).toString());

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      body: Container(
        
        padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(5)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
              SizedBox(
              width: mediaQueryHelper.getWidthPercentage(50),
              child: CustomSearchBar(searchController: searchController)),
              SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // card body
                      SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(50),
                      height: mediaQueryHelper.getHeightPercentage(100),
                      child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index)=>
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: mediaQueryHelper.getHeightPercentage(2)),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: mediaQueryHelper.getHeightPercentage(1)),
                          decoration: BoxDecoration(color: AppColors.cardBackgroundColor,
                          borderRadius: BorderRadius.circular(16)),
                          width: mediaQueryHelper.getWidthPercentage(50),
                          child: Row(
                            children: [
                              SizedBox(
                                height: mediaQueryHelper.getHeightPercentage(15),
                                width: mediaQueryHelper.getWidthPercentage(15),
                                child: Image.network("https://www.unitedbreweries.com/images/our-brands/bullet_karnataka.png")
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Bullet Super Strong',style: AppTypography.mediumHeading.copyWith(fontSize:20 ),),
                              SizedBox(width: mediaQueryHelper.getWidthPercentage(5)),
                              SizedBox(
                                width: mediaQueryHelper.getWidthPercentage(10),
                                child: CustomRoundedDropdown(
                                  height: mediaQueryHelper.getHeightPercentage(0.4),
                                  borderRadius: 24,
                                  value: initialValue,
                                  items: availableQuantity.map<DropdownMenuItem<String>>(
                                  (val) => DropdownMenuItem<String>(
                                    alignment: Alignment.center,
                                    value: val,
                                    child: Text(val),
                                  )).toList(),
                                  onChanged:(selectedValue){
                                    setState(() {
                                      initialValue = selectedValue!;
                                    });
                                  },
                                ),
                                )
                            ]
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
                          Row(
                            children: [
                              Text('Qty : '),
                              SizedBox(
                                height: mediaQueryHelper.getHeightPercentage(5),
                                width: mediaQueryHelper.getWidthPercentage(5),
                                child: AppTextFieldForm(
                                labelText: '',
                                 controller: qtyController,
                                // textAlign: TextAlign.justify,
                                // fontSize: 16,
                                // cursorHeight: 16,
                                onChanged: (_){
                                  int selectedIndex  = index;
                                  print('Selected Index : $selectedIndex');
                                  print('Index: ${index}');
                                },
                                ),
                              ),
                          // Text('Qty : '),
                          // SizedBox(
                          //   width: mediaQueryHelper.getWidthPercentage(7),
                          //   child: CustomRoundedDropdown(
                          //     height: mediaQueryHelper.getHeightPercentage(0.4),
                          //     borderRadius: 24,
                          //     value: qty,
                          //     items: numberofQty.map<DropdownMenuItem<String>>(
                          //     (val) => DropdownMenuItem<String>(
                          //       alignment: Alignment.center,
                          //       value: val,
                          //       child: Text(val),
                          //     )).toList(),
                          //     onChanged:(selectedValue){
                          //       setState(() {
                          //         qty = selectedValue!;
                          //       });
                          //     },
                          //   ),
                          //   ),
                          SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                          SizedBox(
                          width: mediaQueryHelper.getWidthPercentage(8),
                          child: AppButton(
                          height: 30,
                          fontSize: 16,
                          onTap: (){},
                          color: AppColors.whiteColor,
                          buttonColor: AppColors.primaryColor,
                          text: 'Add To Bill')),
                          SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                          Text('Price : ₹ 500')
                            ]
                          ),
                                ]
                              )
                              
                            ]
                          ),
                        ),
                      )
                      ))
                      
                      // card body ends here
                    ],
                  ),
                  SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
                  Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.cardBackgroundColor,
                                borderRadius: BorderRadius.circular(24),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                                  vertical:mediaQueryHelper.getHeightPercentage(2) ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(top: 3),
                                            child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: AppColors.vineGreenColor,
                                            child: Icon(Icons.check,color: AppColors.whiteColor,size: 10,),),
                                          ),
                                          SizedBox(width: mediaQueryHelper.getWidthPercentage(0.5),),
                                          SizedBox(
                                            width: mediaQueryHelper.getHeightPercentage(20),
                                          //  height: mediaQueryHelper.getHeightPercentage(50),
                                          child: Text('You are eligible for free shipping',
                                          style:AppTypography.normalSmallText.copyWith(color: AppColors.vineGreenColor,
                                          overflow: TextOverflow.fade))),
                                        ],
                                      ),
                                      SizedBox(height: mediaQueryHelper.getHeightPercentage(10),),
                                      Text('Grand Total : ₹ 15800',style: AppTypography.smallHeading.copyWith(fontSize:22),),
                                      SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                          width:mediaQueryHelper.getHeightPercentage(30) ,
                                          child: AppButton(
                                          onTap: (){
                                            showDialog(context: context, 
                                            builder: (context)=>const ProceedToCheckOutDialog(),
                                            );
                                          },
                                          fontSize: 14,
                                          buttonColor: AppColors.primaryColor,
                                          color: AppColors.whiteColor,
                                          text: 'Proceed To checkout'),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),
                              )
                            ],
                          )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}