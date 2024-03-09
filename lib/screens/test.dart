import 'package:flutter/material.dart';



class TestDashBoardScreen extends StatefulWidget {
  @override
  _TestDashBoardScreenState createState() => _TestDashBoardScreenState();
}

class _TestDashBoardScreenState extends State<TestDashBoardScreen> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // Handle button tap
        },
        child: Container(
          padding: EdgeInsets.all(20),
          color: _isHovered ? Colors.blue : Colors.red,
          child: Text(
            'Hover over me!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
