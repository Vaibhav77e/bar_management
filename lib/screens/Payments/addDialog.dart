import 'package:flutter/material.dart';

import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';
import '../../utils/MediaqueryHelper.dart';
import '../../widgets/CustomDropDown/CustomDropDown.dart';
import '../../widgets/app_Text_field.dart';


class AddDialogButton extends StatefulWidget {
  const AddDialogButton({Key? key}) : super(key: key);

  @override
  State<AddDialogButton> createState() => _AddDialogButtonState();
}

class _AddDialogButtonState extends State<AddDialogButton> {
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
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);

    return AlertDialog(
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
          ],
        ),
      ),
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
