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
    TextEditingController  passwordController = TextEditingController();
   TextEditingController addressController = TextEditingController();
   TextEditingController emergencyContactController = TextEditingController();
   TextEditingController dateOfBirthController = TextEditingController();


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
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
          horizontal:mediaQueryHelper.getWidthPercentage(2),
          vertical:mediaQueryHelper.getHeightPercentage(2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Add Staffs',style: AppTypography.mediumHeading,),
            SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
            // Upload Image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: mediaQueryHelper.getWidthPercentage(15),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Upload Img',
                      style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w600),),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                  GestureDetector(
                    onTap: getImage,
                    child: Container(
                      height: mediaQueryHelper.getHeightPercentage(30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.textFieldBodyColor
                      ),
                    child: _image == null
                    ? const Icon(Icons.add)
                  : ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(_image!,fit: BoxFit.fill,)),
                ),
                  ),
                ],
                ),
              ),
        
              SizedBox(
                width: mediaQueryHelper.getWidthPercentage(30),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                          const Text('Name of staffs',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(labelText: 'Name of staffs',
                           controller: nameController,
                           ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                           const Text('Email',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(
                          labelText: 'Email',
                           controller: emailController,
                           ),
                           SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                           const Text('Phone',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(
                          labelText: 'Phone',
                           controller: phoneController,
                           ),
                        ],
                      ),
              ),
        
        
              SizedBox(
                height: mediaQueryHelper.getHeightPercentage(50),
                child: Image.asset('assets/images/dashboard-images/bartender.png'))
        
            ],
            ),
        
            
             SizedBox(
                width: mediaQueryHelper.getWidthPercentage(80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                       width: mediaQueryHelper.getWidthPercentage(25),
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                                const Text('Password',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(labelText: 'Password',
                                 controller: passwordController,
                                 ),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                                 const Text('Address',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(
                                labelText: 'Address',
                                 controller: addressController,
                                 ),
                                 SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                            
                              ],
                            ),
                    ),
                    SizedBox(
                       width: mediaQueryHelper.getWidthPercentage(25),
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                                  const Text('role',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(
                                labelText: 'role',
                                controller: roleController,
                                ),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                                 const Text('Date of Birth',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(
                                labelText: 'Date of Birth',
                                 controller: dateOfBirthController,
                                 ),
                                 SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                            
                              ],
                            ),
                    ),
                                  
                SizedBox(
                width: mediaQueryHelper.getWidthPercentage(25),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Age',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(labelText: 'Age',
                           controller: ageController,
                           ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                           const Text('Gender',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(
                          labelText: 'Gender',
                           controller: genderController,
                           ),            
                        ],
                      ),
              ),
                  ],
                ),
              ),
        
          ],
        )
        ),
      ),
    );
  }
}