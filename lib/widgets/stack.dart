import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Stack', type: StackSample)
StackSample stackSample(BuildContext context) {
  return const StackSample();
}

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(),
    );
  }
}
