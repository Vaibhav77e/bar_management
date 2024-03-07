// import 'package:bar_management_system/utils/MediaqueryHelper.dart';
// import 'package:flutter/material.dart';

// import '../../typography/Apptypography.dart';
// import '../../utils/AppColors.dart';
// import '../../widgets/main_menu.dart';

// class DashBoardScreen  extends StatelessWidget {
//   const DashBoardScreen ({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
//     return Container(
//               child:Padding(
//                 padding:  EdgeInsets.symmetric(
//                 horizontal: mediaQueryHelper.getWidthPercentage(2),
//                 vertical:mediaQueryHelper.getHeightPercentage(2)
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                      Text('Dashboard',style: AppTypography.mediumHeading.copyWith(color: AppColors.menuBarColor)),
//                      SizedBox(height:mediaQueryHelper.getHeightPercentage(5) ,),
//                     Divider(thickness: 0.5,),
//                   // cards starts here
//                   Row(
//                     children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                     Text('OverView',style: AppTypography.smallHeading.copyWith(
//                       color: AppColors.menuBarColor,
//                       fontWeight:FontWeight.w600),),
//                     SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
//                     Row(children: [
//                       MainMenu(
//                         amountText:'₹ 1,20,585',
//                         backgroundColor: AppColors.lightBlueColor,
//                         circularAssetName: 'assets/images/dashboard-images/revenue.png',
//                         titleText: 'Today Sales',
//                       ),
//                       SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
//                       MainMenu(
//                         amountText:'₹ 75,82,585',
//                         backgroundColor: AppColors.mainMenuColor2,
//                         circularAssetName: 'assets/images/dashboard-images/expenses.png',
//                         titleText: 'Expenses',
//                       ),
//                       SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
//                       MainMenu(
//                         amountText:'₹ 56,20,585',
//                         backgroundColor: AppColors.mainMenuColor3,
//                         circularAssetName: 'assets/images/dashboard-images/discount.png',
//                         titleText: 'Total Sales',
//                       ),
//                     ],
//                   ),
//                     ],
//                   ),
//                   SizedBox(width: mediaQueryHelper.getWidthPercentage(2)),
//                   // inventory card
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                    Text('Inventory',style: AppTypography.smallHeading.copyWith(
//                       color: AppColors.menuBarColor,
//                       fontWeight:FontWeight.w600),),
//                       SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
//                       Container(
//                       height:mediaQueryHelper.getHeightPercentage(25),
//                       width: mediaQueryHelper.getWidthPercentage(15),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: AppColors.inventoryCardColor
//                       ),
//                       child:Padding(
//                         padding:  EdgeInsets.symmetric(
//                         horizontal: mediaQueryHelper.getWidthPercentage(1),
//                         vertical: mediaQueryHelper.getHeightPercentage(2)
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                           Text('Total Inventory - ₹85,00,550'),
//                           Text('Low Stock - Vodka'),],
//                         ),
//                       )
//                     ),
//                     ],
//                   ),
//                   SizedBox(width: mediaQueryHelper.getWidthPercentage(10),),
//                   SizedBox(
//                     height: mediaQueryHelper.getHeightPercentage(40),
//                     child: Image.asset('assets/images/dashboard-images/bartender.png'),
//                   ),
//                   ],
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                       Text('Staffs',style: AppTypography.smallHeading.copyWith(color: AppColors.menuBarColor)),
//                       SizedBox(height:mediaQueryHelper.getHeightPercentage(5) ,),
//                       Container(
//                         width: mediaQueryHelper.getWidthPercentage(28),
//                         decoration: BoxDecoration(
//                          border: Border.all(color: AppColors.dividerColor),
//                          borderRadius: BorderRadius.circular(16)
//                         ),
//                         child:Column(
//                           children: [
//                             Padding(
//                               padding:  EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(1)),
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           CircleAvatar(
//                                             radius: 15,
//                                             child: Icon(Icons.person),
//                                           ),
//                                         SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
//                                           Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text('Eren yeager'),
//                                           Text('Role'),
//                                         ],
//                                       )
//                                         ],
//                                       ),
//                                       Text('35hr/wk')
//                                     ],
//                                   ),
//                                   Divider(thickness: 0.5,)
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ),
//                       ],),
//                       // Column(
//                       //   crossAxisAlignment: CrossAxisAlignment.start,
//                       //   children: [
//                       // Text('Recent Orders',style: AppTypography.smallHeading.copyWith(color: AppColors.menuBarColor)),
//                       // SizedBox(height:mediaQueryHelper.getHeightPercentage(5) ,),
//                       //   ]
//                       // )
//                     ],
//                   ),
                  
//                   ],
//                 ),
//               )
//             );
//   }
// }





import 'dart:io';

import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';
import '../../widgets/app_Text_field.dart';

class CreateNewStaffs extends StatefulWidget {
  const CreateNewStaffs({Key? key}) : super(key: key);

  @override
  State<CreateNewStaffs> createState() => _CreateNewStaffsState();
}

class _CreateNewStaffsState extends State<CreateNewStaffs> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emergencyContactController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();

  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
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
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQueryHelper.getWidthPercentage(2),
              vertical: mediaQueryHelper.getHeightPercentage(2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Add Staffs', style: AppTypography.mediumHeading),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(5)),
                // Upload Image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload Img',
                            style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          GestureDetector(
                            onTap: getImage,
                            child: Container(
                              height: mediaQueryHelper.getHeightPercentage(30),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.textFieldBodyColor,
                              ),
                              child: _image == null
                                  ? Icon(Icons.add)
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.file(_image!, fit: BoxFit.fill),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Name of staffs', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Name of staffs',
                            controller: nameController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          const Text('Email', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Email',
                            controller: emailController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          const Text('Phone', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Phone',
                            controller: phoneController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Password', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Password',
                            controller: passwordController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          const Text('Address', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Address',
                            controller: addressController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Role', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Role',
                            controller: roleController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          const Text('Date of Birth', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Date of Birth',
                            controller: dateOfBirthController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Age', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Age',
                            controller: ageController,
                          ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                          const Text('Gender', style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                          AppTextFieldForm(
                            labelText: 'Gender',
                            controller: genderController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
