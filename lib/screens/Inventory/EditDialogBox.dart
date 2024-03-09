import 'dart:io';

import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';
import '../../widgets/CustomDropDown/CustomDropDown.dart';
import '../../widgets/app_Text_field.dart';
import '../../widgets/app_button.dart';

class EditDialogBox extends StatefulWidget {
  void Function()? getImage;
  EditDialogBox({ this.getImage});

  @override
  State<EditDialogBox> createState() => _EditDialogBoxState();
}

class _EditDialogBoxState extends State<EditDialogBox> {
    
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

  String dropdownValue = 'N/A';

  List<String> options = ['N/A', 'New Year', 'Women\'s Day', 'Whaterver'];

  String produts = 'Beer';

  List<String> productsCategory = ['Beer','Vodka','Rum'];


  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stockController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController discountType = TextEditingController();
  final TextEditingController productCategory = TextEditingController();

  @override
  Widget build(BuildContext context) {
  MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return AlertDialog(
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
                          onTap: widget.getImage,
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
                        Text('Category',
                        style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                        const Text('Product Category',style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                    SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                      child:  CustomRoundedDropdown(
                        borderColor: Colors.transparent,
                        dropDownBodyColor:AppColors.textFieldBodyColor,
                        height: mediaQueryHelper.getHeightPercentage(0.8),
                items:  productsCategory.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  alignment: Alignment.center,
                  child: Text(  
                    value,
                    style: AppTypography.normalText,
                  ),
                );
              }).toList(), 
              value: produts, 
              onChanged: (newValue) {
                if (newValue != null) {
                  setState(() {
                    produts = newValue;
                    print('produts Value: ' + produts); 
                  });
                }
              }),

                      ),

                      const Text('Discount',style: AppTypography.normalText,),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                      child: AppTextFieldForm(labelText: 'Discount', 
                      controller: discountController)
                      ),
                      
                      const Text('DiscountType',style: AppTypography.normalText,),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                      child:  CustomRoundedDropdown(
                        borderColor: Colors.transparent,
                        dropDownBodyColor:AppColors.textFieldBodyColor,
                        height: mediaQueryHelper.getHeightPercentage(0.8),
                items:  options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  alignment: Alignment.center,
                  child: Text(  
                    value,
                    style: AppTypography.normalText,
                  ),
                );
              }).toList(), value: dropdownValue, onChanged: (newValue) {
                if (newValue != null) {
                  setState(() {
                    dropdownValue = newValue;
                    print('Drop Down Value: ' + dropdownValue); 
                  });
                }
              }),

                      )

                    ],
                  ),
                ),
              ],
            ),
            // pricing and stocking
            ConstContainerBody(
                    width: double.infinity,
                    height: 50,
                    // 2nd card
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('Pricing and stocks',
                        style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Base Pricing',style: AppTypography.normalText,),
                              SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                              AppTextFieldForm(labelText: 'Base Pricing', controller: priceController)
                            ],
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Stock',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                              AppTextFieldForm(
                            labelText: 'Stocks', 
                            controller: stockController),
                      ],
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