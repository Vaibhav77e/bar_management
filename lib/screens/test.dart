import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({Key? key}) : super(key: key);

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String dropdownValue = 'Dog';
  List<String> options = ['Dog', 'Cat', 'Tiger', 'Lion'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => DropdownDialog(
                currentValue: dropdownValue,
                options: options,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class DropdownDialog extends StatefulWidget {
  final String currentValue;
  final List<String> options;
  final ValueChanged<String> onChanged;

  const DropdownDialog({
    required this.currentValue,
    required this.options,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  _DropdownDialogState createState() => _DropdownDialogState();
}

class _DropdownDialogState extends State<DropdownDialog> {
  late String _dropdownValue;

  @override
  void initState() {
    super.initState();
    _dropdownValue = widget.currentValue;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Choose an option'),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: _dropdownValue,
            items: widget.options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              if (newValue != null) {
                setState(() {
                  _dropdownValue = newValue;
                });
                widget.onChanged(newValue);
              }
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
