import 'dart:io';

import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';

class CreateNewStaffs extends StatefulWidget {
  const CreateNewStaffs({Key? key}) : super(key: key);

  @override
  State<CreateNewStaffs> createState() => _CreateNewStaffsState();
}

class _CreateNewStaffsState extends State<CreateNewStaffs> {
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
      child: Padding(padding: EdgeInsets.symmetric(
        horizontal:mediaQueryHelper.getWidthPercentage(2),
        vertical:mediaQueryHelper.getHeightPercentage(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
      )
      ),
    );
  }
}