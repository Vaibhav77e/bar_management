import 'dart:io';

import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/app_Text_field.dart';

class EditInventoryProducts extends StatefulWidget {
  const EditInventoryProducts({Key? key}) : super(key: key);

  @override
  State<EditInventoryProducts> createState() => _EditInventoryProductsState();
}

class _EditInventoryProductsState extends State<EditInventoryProducts> {
  
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

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stockController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController discountType = TextEditingController();
  final TextEditingController productCategory = TextEditingController();

  String _selectedCategory = 'Select a category';
  String _selectProduct = 'Select a product';

  // List of available categories
  final List<String> _categories = ['Category 1', 'Category 2', 'Category 3'];
  final List<String> _productCategories = ['Product Category 1', 'Product Category 2', 'Product Category 3'];

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
        const Text('View Products',style: AppTypography.smallHeading,),
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
                                child: Text('Product'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                child: Text('Product Id'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                child: Text('Stock'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                                child: Text('Price'),
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
                                      children: [
                                        SizedBox(height:mediaQueryHelper.getHeightPercentage(4),
                                        child: Image.asset('assets/images/inventory-management.png'),),
                                        SizedBox(width: mediaQueryHelper.getWidthPercentage(1)),
                                        Text('Product name')
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                    child: Text('HKJIFRT'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                    child: Text('80 pcs'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Adjust the padding values as needed
                                    child: Text('₹ 2000'),
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
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Id : TBX23'),
                      Text('Product Name'),
                      ],
                    ),
                      Text('₹ 52256')
                      ]
                    ),
                    SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
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
                    SizedBox(height: mediaQueryHelper.getHeightPercentage(2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Stocks'),
                        Text('47 pcs')
                      ],
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