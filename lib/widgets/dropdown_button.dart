import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'DropdownButton', type: DropdownButtonSample)
DropdownButtonSample dropdownButtonSample(BuildContext context) {
  return const DropdownButtonSample();
}

class DropdownButtonSample extends StatefulWidget {
  const DropdownButtonSample({super.key});

  @override
  State<DropdownButtonSample> createState() => _DropdownButtonSampleState();
}

class _DropdownButtonSampleState extends State<DropdownButtonSample> {
  int? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<int>(
          value: selectedValue,
          items: [
            DropdownMenuItem(value: 1, child: Text('item1')),
            DropdownMenuItem(value: 2, child: Text('item2')),
            DropdownMenuItem(value: 3, child: Text('item3')),
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
