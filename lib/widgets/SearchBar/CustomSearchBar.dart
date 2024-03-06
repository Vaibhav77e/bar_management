import 'dart:async';
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:flutter/material.dart';

import '../../utils/MediaqueryHelper.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController searchController;
  final String? hintText;

   CustomSearchBar({Key? key,required this.searchController,this.hintText='Search...'}) : super(key: key);

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
    late Timer _debounce;

  @override
  void initState() {
    super.initState();
    _debounce = Timer(Duration(milliseconds: 0), () {});
  }

  @override
  void dispose() {
    _debounce.cancel();
    super.dispose();
  }

  void _onTextChanged(String value) {
    _debounce.cancel();
    _debounce = Timer(Duration(milliseconds: 500), () {
      if (widget.searchController.text.isNotEmpty) {
        print(widget.searchController.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
        height: mediaQueryHelper.getHeightPercentage(5),
        padding: EdgeInsets.only(
         right: mediaQueryHelper.getWidthPercentage(2),
         left: mediaQueryHelper.getWidthPercentage(2),
         bottom:mediaQueryHelper.getHeightPercentage(1),
         top: mediaQueryHelper.getWidthPercentage(0.5)
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.textFieldBodyColor),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.search, color: Colors.grey,size: 20,),
            Expanded(
              child: TextField(
                controller: widget.searchController,
                onChanged: _onTextChanged,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: AppTypography.normalText.copyWith(color:AppColors.textGreyColor ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      );
  }
}