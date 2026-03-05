import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ElevatedButton', type: ElevatedButtonSample)
ElevatedButtonSample elevatedButtonSample(BuildContext context) {
  return const ElevatedButtonSample();
}

class ElevatedButtonSample extends StatelessWidget {
  const ElevatedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            print('ElevatedButton tapped');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
