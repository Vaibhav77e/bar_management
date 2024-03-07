import 'dart:io';

import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/app_Text_field.dart';

class EditStaffs extends StatefulWidget {
  const EditStaffs({Key? key}) : super(key: key);

  @override
  State<EditStaffs> createState() => _EditStaffsState();
}

class _EditStaffsState extends State<EditStaffs> {
  
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


  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
      color: AppColors.cardBackgroundColor,
      padding: EdgeInsets.symmetric(
      horizontal: mediaQueryHelper.getWidthPercentage(4),
      vertical: mediaQueryHelper.getHeightPercentage(2),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('View Staffs',style: AppTypography.smallHeading,),
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
                      child: Image.asset('assets/images/inventory-management.png'),
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
    );
  }

  showEditDialog(){

    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    showDialog(
      
      context: context, 
      builder: (context)=>AlertDialog(
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
                      const Text('DiscountType',style: AppTypography.normalText,),
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
                    height: 60,
                    // 2nd card
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
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
    ));
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