import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'TextField', type: TextFieldSample)
TextFieldSample textFieldSample(BuildContext context) {
  return const TextFieldSample();
}

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      body: TextField(
        controller: controller,
        onChanged: (value) {
          print('Value changed: $value');
        },
        onSubmitted: (value) {
          print('Value submitted: $value');
          print('Controller value: ${controller.text}');
        },
        onTap: () {
          print('TextField tapped');
        },
      ),
    );
  }
}
