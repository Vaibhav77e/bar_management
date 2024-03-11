import 'dart:io';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/app_Text_field.dart';
import 'showEditStaffsDialog.dart';

class EditStaffs extends StatefulWidget {
  const EditStaffs({Key? key}) : super(key: key);

  @override
  State<EditStaffs> createState() => _EditStaffsState();
}

class _EditStaffsState extends State<EditStaffs> {

  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
      color: AppColors.cardBackgroundColor,
      padding: EdgeInsets.symmetric(
      horizontal: mediaQueryHelper.getWidthPercentage(4),
      vertical: mediaQueryHelper.getHeightPercentage(2),
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('View Staffs',style: AppTypography.smallHeading,),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
          // Search 
          SizedBox(
          width: mediaQueryHelper.getWidthPercentage(25),
          child: CustomSearchBar(searchController: searchController)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
                  Container(
                  height: mediaQueryHelper.getHeightPercentage(80),
                  width: mediaQueryHelper.getWidthPercentage(50),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    children: [
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(0.5)),
                    child: Table(
                          children: const [
                            TableRow(
                              decoration: BoxDecoration(color: AppColors.textFieldBodyColor),
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                  child: Text('Name'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                  child: Text('Staff Id'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                  child: Text('Ratings'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                  child: Text('Work'),
                                ),
                              ],
                            ),
                          ],
                        )
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(0.5)),
                        height: mediaQueryHelper.getHeightPercentage(71),
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context,index) {
                            return Table(
                              border: TableBorder(bottom: BorderSide(width: 0.5)),
                              children:  [
                                TableRow(
                                  decoration: const BoxDecoration(color: AppColors.whiteColor),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height:mediaQueryHelper.getHeightPercentage(4),
                                          child: CircleAvatar(radius: 18,)),
                                          SizedBox(width: mediaQueryHelper.getWidthPercentage(1)),
                                          Text('Profile Name')
                                        ]
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                      child: Text('HKJIFRT'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                      child: Text('5'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                      child: Text('40hr/wk'),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }
                        ),
                      )
                    ],
                  ),
                  ),
                ],
              ),
              Column(
                children: [
                SizedBox(height: mediaQueryHelper.getHeightPercentage(8),),
                Container(
                  height: mediaQueryHelper.getHeightPercentage(80),
                  width: mediaQueryHelper.getWidthPercentage(25),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                       Container(
                        padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryHelper.getWidthPercentage(3),
                        vertical: mediaQueryHelper.getHeightPercentage(2)
                        ),
                        height: mediaQueryHelper.getHeightPercentage(25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.textFieldBodyColor),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset('assets/images/staffs-screen-images/user.png'),
                      ),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                        Text('Staff Id : TBX23'),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                        Text('Name : Whatever'),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        Text('Age : 25'),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        Text('Email : info@gamil.com'),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                        Text('Phone : Whatever'),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        Text('Gender: Male'),
                        ],
                      ),
                      ]
                      ),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(5)),
                      AppButton(onTap: showEditDialog, text: 'Edit')
                    ]
                  ),
                ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
    );
  }

  showEditDialog(){
    showDialog(
      context: context,
      builder: (context)=>ShowEditStaffsDialog(),
    );
   
  }



}