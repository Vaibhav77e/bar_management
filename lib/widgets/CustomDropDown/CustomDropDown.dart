import 'package:bar_management_system/utils/AppColors.dart';
import 'package:flutter/material.dart';

class CustomRoundedDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final double borderRadius;
  final Color borderColor;
  final Color dropdownColor;

  const CustomRoundedDropdown({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.borderRadius = 10.0,
    this.borderColor = AppColors.textGreyColor,
    this.dropdownColor = AppColors.whiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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