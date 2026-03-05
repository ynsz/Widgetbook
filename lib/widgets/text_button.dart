import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'TextButton', type: TextButtonSample)
TextButtonSample textButtonSample(BuildContext context) {
  return const TextButtonSample();
}

class TextButtonSample extends StatelessWidget {
  const TextButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 80,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print('TextButton tapped');
            },
            child: Text('TextButton'),
          ),
        ),
      ),
    );
  }
}
