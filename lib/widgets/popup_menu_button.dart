import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'PopupMenuButton', type: PopupMenuButtonSample)
PopupMenuButtonSample popupMenuButtonSample(BuildContext context) {
  return const PopupMenuButtonSample();
}

class PopupMenuButtonSample extends StatefulWidget {
  const PopupMenuButtonSample({super.key});

  @override
  State<PopupMenuButtonSample> createState() => _PopupMenuButtonSampleState();
}

class _PopupMenuButtonSampleState extends State<PopupMenuButtonSample> {
  int? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton<int>(
              icon: Icon(Icons.abc),
              tooltip: '選んでね',
              initialValue: _selectedValue,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 1, child: Text('item1')),
                  PopupMenuItem(value: 2, child: Text('item2')),
                  PopupMenuItem(value: 3, child: Text('item3')),
                ];
              },
              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            Text('Selected value: $_selectedValue'),
          ],
        ),
      ),
    );
  }
}
