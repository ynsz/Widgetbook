import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'OutlinedButton', type: OutlinedButtonSample)
OutlinedButtonSample outlinedButtonSample(BuildContext context) {
  return const OutlinedButtonSample();
}

class OutlinedButtonSample extends StatelessWidget {
  const OutlinedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.red,
            shape: BeveledRectangleBorder(),
            side: BorderSide(
              color: Colors.red,
              width: 2,
            )
          ),
          onPressed: () {
            print('OutlinedButton tapped');
          },
          child: Text('OutlinedButton'),
        ),
      ),
    );
  }
}
