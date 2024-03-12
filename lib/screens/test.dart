import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:flutter/material.dart';

import '../utils/MediaqueryHelper.dart';
import '../widgets/CustomDropDown/CustomDropDown.dart';
import '../widgets/app_Text_field.dart';


class TestDashBoardScreen extends StatefulWidget {
  @override
  State<TestDashBoardScreen> createState() => _TestDashBoardScreenState();
}

class _TestDashBoardScreenState extends State<TestDashBoardScreen> {

  int count = 1;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  String initialStatus = "Not Paid";
  List<String> _status = ['Not Paid', 'Paid'];

  String membershipStatus = "N/A";
  List<String> _isMember = ['N/A', 'VIP Access'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView in AlertDialog'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showGridViewDialog(context);
            },
            child: Text('Show Dialog'),
          ),
        ),
      );
  }

  void _showGridViewDialog(BuildContext context) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('GridView Dialog'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                children: [
                  ConstContainerBody(
                    height: 50,
                    width: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Name', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        AppTextFieldForm(
                          labelText: 'Name of Customer',
                          controller: nameController,
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        const Text('Phone', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        AppTextFieldForm(
                          labelText: 'Phone',
                          controller: phoneController,
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        const Text('Quantity', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        AppTextFieldForm(
                          labelText: 'Quantity',
                          controller: quantityController,
                        ),
                      ],
                    ),
                  ),
                  ConstContainerBody(
                    height: 50,
                    width: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Status', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        CustomRoundedDropdown(
                          height: 7,
                          borderRadius: 18,
                          dropDownBodyColor: AppColors.textFieldBodyColor,
                          borderColor: Colors.transparent,
                          items: _status
                              .map<DropdownMenuItem<String>>(
                                (status) => DropdownMenuItem(
                                  value: status,
                                  alignment: Alignment.center,
                                  child: Text(
                                    status,
                                    style: AppTypography.normalText,
                                  ),
                                ),
                              )
                              .toList(),
                          value: initialStatus,
                          onChanged: (newStatus) {
                            if (newStatus != null) {
                              setState(() {
                                initialStatus = newStatus;
                                print('Drop Down Value: ' + initialStatus);
                              });
                            }
                          },
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        const Text('Membership', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        CustomRoundedDropdown(
                          height: 7,
                          borderRadius: 18,
                          dropDownBodyColor: AppColors.textFieldBodyColor,
                          borderColor: Colors.transparent,
                          items: _isMember
                              .map<DropdownMenuItem<String>>(
                                (isPaidMember) => DropdownMenuItem(
                                  value: isPaidMember,
                                  alignment: Alignment.center,
                                  child: Text(
                                    isPaidMember,
                                    style: AppTypography.normalText,
                                  ),
                                ),
                              )
                              .toList(),
                          value: membershipStatus,
                          onChanged: (newStatus) {
                            if (newStatus != null) {
                              setState(() {
                                membershipStatus = newStatus;
                                print('Drop Down Value: ' + membershipStatus);
                              });
                            }
                          },
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        const Text('Amount', style: AppTypography.normalSmallText),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                        AppTextFieldForm(
                          labelText: 'Amount',
                          controller: amountController,
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(1)),
                      ],
                    ),
                  ),
                ],
              ),
                SizedBox(
                  width: 800,
                  height: 500, // Set height as per your need
                  child: GridView.count(
                    childAspectRatio:0.97,
                    crossAxisCount: 3,
                    children: List.generate(21, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                         // height: 36, no affect
                          decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                              height: 160,
                              alignment: Alignment.center,
                              child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)
                                ),
                              child: Image.network("https://www.unitedbreweries.com/images/our-brands/bullet_karnataka.png",
                              fit: BoxFit.fill,))),
                              const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Bullet Super Strong'),
                                    Text('₹ 500'),
                                  ],
                                ),
                              ),
                              SizedBox(height:6.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(top:2,right: 8,left:4,bottom:5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16)),
                                color: AppColors.addToCartButton
                              ),
                              child: Text('Add To cart',style: AppTypography.normalText.copyWith(color: AppColors.whiteColor),)),
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                    if(count==0){
                                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Alteast select a item")));
                                       return;
                                    }
                                    count--;
                                    setState(() {});
                                  }, icon: const Icon(Icons.remove)),
                                  SizedBox(
                                    child: Text('$count'),
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.greenColor,
                                    child: IconButton(onPressed: (){
                                      count++;
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.add,color: AppColors.whiteColor)),
                                  )
                                ],
                              )
                              ],)
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Okay'),
            ),
          ],
        );
      },
    );
  }

    // const Container body
  Widget ConstContainerBody({
    double height = 50,
    double width = 25,
    Widget? child,
  }) {
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Container(
      height: mediaQueryHelper.getHeightPercentage(height),
      width: mediaQueryHelper.getWidthPercentage(width),
      padding: EdgeInsets.symmetric(
        horizontal: mediaQueryHelper.getWidthPercentage(2),
        vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }

}
