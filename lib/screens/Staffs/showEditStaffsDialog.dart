import 'dart:io';

import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';
import '../../utils/MediaqueryHelper.dart';
import '../../widgets/app_Text_field.dart';

class ShowEditStaffsDialog extends StatefulWidget {
  ShowEditStaffsDialog({Key? key}) : super(key: key);

  @override
  State<ShowEditStaffsDialog> createState() => _ShowEditStaffsDialogState();
}

class _ShowEditStaffsDialogState extends State<ShowEditStaffsDialog> {

   File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(
      source:  ImageSource.gallery,
    );

      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print('Image Selected');
      } else {
        print('No image selected.');
      }
      setState(() {});
  }

  
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
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return  AlertDialog(
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: Colors.transparent,
      content:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                ConstContainerBody(child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
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
                        )
                      ],
                    ) ,
                    ),
                    // category
                    ConstContainerBody(
                      height: 50,
                      width: 15,
                      child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const Text('Name of staffs',
                      style: AppTypography.normalSmallText),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                      AppTextFieldForm(labelText: 'Name of staffs',
                      controller: nameController,
                      ),
                    const Text('Email',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(
                          labelText: 'Email',
                           controller: emailController,
                           ),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
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
              ],
            ),
            // pricing and stocking
            ConstContainerBody(
                    width: double.infinity,
                    height: mediaQueryHelper.getHeightPercentage(9),
                    // 2nd card
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           const Text('Gender',
                          style: AppTypography.normalSmallText),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                          AppTextFieldForm(
                          labelText: 'Gender',
                           controller: genderController,
                           ),
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                            const Text('Password',
                            style: AppTypography.normalSmallText),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                            AppTextFieldForm(labelText: 'Password',
                             controller: passwordController,
                             ),
                        const Text('Address',
                           style: AppTypography.normalSmallText),
                           SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                           AppTextFieldForm(
                           labelText: 'Address',
                            controller: addressController,
                ),
                   const Text('role',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(
                                labelText: 'role',
                                controller: roleController,
                                ),
                 const Text('Date of Birth',
                                style: AppTypography.normalSmallText),
                                SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                                AppTextFieldForm(
                                labelText: 'Date of Birth',
                                 controller: dateOfBirthController,
                                 ),
              SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(15),
                  child: AppButton(
                    color: AppColors.whiteColor,
                    buttonColor: AppColors.saveButtonColor,
                    height: mediaQueryHelper.getHeightPercentage(5),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    text: 'Save',
                  ),
                ),
                SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(15),
                  child: AppButton(
                    color: AppColors.whiteColor,
                    buttonColor: AppColors.deleteButtonColor,
                    height: mediaQueryHelper.getHeightPercentage(5),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    text: 'Delete',
                  ),
                ),
              ]
            )
                ],),
              ),
          ],
        ),
      ),
    );
    
  }


    // const Container body
  Widget ConstContainerBody({
    double height = 50,
    double width = 25,
    verticalPadding = 2,
    Widget? child,
  }){
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
        height: mediaQueryHelper.getHeightPercentage(height),
        width: mediaQueryHelper.getWidthPercentage(width),
        padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
        vertical: mediaQueryHelper.getHeightPercentage(2)),
        decoration: BoxDecoration(
          //color: AppColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(16)
        ),
      child: child,
    );
  }
}