
import 'package:bar_management_system/screens/Inventory/EditDialogBox.dart';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/SearchBar/CustomSearchBar.dart';

class EditInventoryProducts extends StatefulWidget {
  const EditInventoryProducts({Key? key}) : super(key: key);

  @override
  State<EditInventoryProducts> createState() => _EditInventoryProductsState();
}

class _EditInventoryProductsState extends State<EditInventoryProducts> {
  final TextEditingController searchController = TextEditingController();

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
          const Text('View Products',style: AppTypography.smallHeading,),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(4),),
          SizedBox(
          width: mediaQueryHelper.getWidthPercentage(20),
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
    ),
    );
  }

  showEditDialog(){
    showDialog(
      
      context: context,
      builder: (context)=>EditDialogBox(),
    );
  }


}