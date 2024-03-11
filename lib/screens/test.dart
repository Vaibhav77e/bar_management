import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelectionDialog extends StatefulWidget {
  @override
  _ImageSelectionDialogState createState() => _ImageSelectionDialogState();
}

class _ImageSelectionDialogState extends State<ImageSelectionDialog> {
  File? _selectedImage;

  Future<void> showImageSelectionDialog(BuildContext context) async {
    final imagePicker = ImagePicker();
    final XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Upload Image'),
          GestureDetector(
            onTap: () {
              showImageSelectionDialog(context);
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100),
              ),
              child: _selectedImage == null
                  ? Icon(
                      Icons.add_a_photo,
                      size: 50,
                      color: Colors.grey,
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.file(
                        _selectedImage!,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class TestDashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => ImageSelectionDialog(),
            );
          },
          child: const Text('Upload Image'),
        ),
      ),
    );
  }
}
