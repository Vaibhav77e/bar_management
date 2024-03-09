import 'package:bar_management_system/utils/AppColors.dart';
import 'package:flutter/material.dart';

import '../../utils/MediaqueryHelper.dart';

class CustomRoundedDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final double borderRadius;
  final Color borderColor;
  final Color dropdownColor;
  final double height;
  final Color dropDownBodyColor;

  const CustomRoundedDropdown({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.borderRadius = 10.0,
    this.height = 5,
    this.borderColor = AppColors.textGreyColor,
    this.dropdownColor = AppColors.whiteColor,
    this.dropDownBodyColor = AppColors.whiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
      height: mediaQueryHelper.getHeightPercentage(height),
      padding: EdgeInsets.symmetric(horizontal:mediaQueryHelper.getWidthPercentage(2)),
      decoration: BoxDecoration(
        color: dropDownBodyColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: DropdownButton<T>(
        items: items,
        value: value,
        onChanged: onChanged,
        underline: Container(),
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 24.0,
        isExpanded: true,
        dropdownColor: dropdownColor,
      ),
    );
  }
}




// Container(
//       padding: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         border: Border.all(
//           color: Colors.grey,
//           width: 1.0,
//         ),
//       ),
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         onChanged: (String? newValue) {
//           setState(() {
//             dropdownValue = newValue!;
//           });
//         },
//         items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     )