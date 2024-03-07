import 'dart:io';

import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/app_Text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductsToInventory extends StatefulWidget {
  const AddProductsToInventory({Key? key}) : super(key: key);

  @override
  State<AddProductsToInventory> createState() => _AddProductsToInventoryState();
}

class _AddProductsToInventoryState extends State<AddProductsToInventory> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stockController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController discountType = TextEditingController();
  final TextEditingController productCategory = TextEditingController();

  String _selectedCategory = 'Select a category'; // Initial selected category
  String _selectProduct = 'Select a product';

  // List of available categories
  final List<String> _categories = ['Category 1', 'Category 2', 'Category 3'];
  final List<String> _productCategories = ['Product Category 1', 'Product Category 2', 'Product Category 3'];

  // to upload images (now preview mode)

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
      padding: EdgeInsets.symmetric(
      horizontal: mediaQueryHelper.getWidthPercentage(4),
      vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text('Overview',style: AppTypography.smallHeading.copyWith(fontWeight: FontWeight.w600),),
                  // to do this
                  // add search bar
                ]),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                Text('Add Products',style: AppTypography.smallHeading.copyWith(
                color:AppColors.menuBarColor,
                fontWeight: FontWeight.w400),
                ),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(8)),
                Container(
                  height: mediaQueryHelper.getHeightPercentage(50),
                  width: mediaQueryHelper.getWidthPercentage(50),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackgroundColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('General Information',
                      style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                      const Text('Name of product',
                      style: AppTypography.normalSmallText),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                      AppTextFieldForm(labelText: 'Name of Product',
                       controller: nameController,
                       ),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                       const Text('Description product',
                      style: AppTypography.normalSmallText),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                      AppTextFieldForm(
                      labelText: 'Description product',
                       controller: descController,
                       maxLines: 3,
                       ),
                    ],
                  )
                ),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(5)),
                Container(
                  height: mediaQueryHelper.getHeightPercentage(35),
                  width: mediaQueryHelper.getWidthPercentage(50),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackgroundColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  // 2nd card
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text('Pricing and stocks',
                      style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                    SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Base Pricing',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(labelText: 'Base Pricing', controller: priceController)
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Stock',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(
                            labelText: 'Stocks', 
                            controller: stockController)
                            ),
                          ],
                        ),
                      ]
                    ),
                    SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Discount',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: AppTextFieldForm(labelText: 'Discount', controller: discountController)
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('DiscountType',style: AppTypography.normalText,),
                            SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                            SizedBox(width: mediaQueryHelper.getWidthPercentage(22),
                            child: GestureDetector(
                               onTap: () {
                              // Show the PopupMenuButton
                              showMenu<String>(
                                context: context,
                                position: RelativeRect.fromLTRB(300, 900, 290, 0),
                                items: _categories.map((String category) {
                                  return PopupMenuItem<String>(
                                    value: category,
                                    child: Text(category),
                                  );
                                }).toList(),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedCategory = value;
                                    discountType.text = _selectedCategory;
                                  });
                                }
                              });
                            },
                              child: AppTextFieldForm(
                              labelText: 'Stocks', 
                              controller: stockController,
                              isEnabled: false,
                              suffixIcon: const Icon(Icons.keyboard_arrow_down,),
                              ),
                            )
                            ),
                          ],
                        ),
                      ]
                    ),
                  ],)
                )
              ],
            ),
            //side card to upload image
            Column(
              children: [
                SizedBox(height: mediaQueryHelper.getHeightPercentage(8)),
                Container(
                  height: mediaQueryHelper.getHeightPercentage(50),
                  width: mediaQueryHelper.getWidthPercentage(25),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackgroundColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
                // ADD product category
                Container(
                  height: mediaQueryHelper.getHeightPercentage(25),
                  width: mediaQueryHelper.getWidthPercentage(25),
                  padding: EdgeInsets.symmetric(horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical: mediaQueryHelper.getHeightPercentage(2)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.cardBackgroundColor
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Category',
                      style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700)),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                      const Text('Product Category',style: AppTypography.normalSmallText),
                      SizedBox(height: mediaQueryHelper.getHeightPercentage(1),),
                      GestureDetector(
                        onTap: () {
                              // Show the PopupMenuButton
                              showMenu<String>(
                                context: context,
                                position: RelativeRect.fromLTRB(500, 800, 0, 100),
                                items: _productCategories.map((String category) {
                                  return PopupMenuItem<String>(
                                    value: category,
                                    child: Text(category),
                                  );
                                }).toList(),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    _selectProduct = value;
                                    productCategory.text = _selectProduct;
                                  });
                                }
                              });
                            },
                        child: AppTextFieldForm(
                        labelText: 'Product Category',
                        controller: productCategory,
                        isEnabled: false,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        ),
                      )
                    ],
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();

  }
}



//
//Container(
          //   height: mediaQueryHelper.getHeightPercentage(10),
          //   decoration: BoxDecoration(
          //     color: AppColors.cardBackgroundColor,
          //   ),
          //   child: Text('Hello'),
          // )