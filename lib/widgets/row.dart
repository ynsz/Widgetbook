import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Row', type: RowSample)
RowSample rowSample(BuildContext context) {
  return const RowSample();
}

class RowSample extends StatelessWidget {
  const RowSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          Text('Row Sample1'),
          Text('Row Sample2\nRow Sample2'),
          Text('Row Sample3'),
        ],
      ),
    );
  }
}
