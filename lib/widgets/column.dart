import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Column', type: ColumnSample)
ColumnSample columnSample(BuildContext context) {
  return const ColumnSample();
}

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          Text('Column Sample1'),
          Text('Column Sample2Column Sample2'),
          Text('Column Sample3'),
        ],
      ),
    );
  }
}
