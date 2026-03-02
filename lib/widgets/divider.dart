import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Divider', type: DividerSample)
DividerSample dividerSample(BuildContext context) {
  return const DividerSample();
}

class DividerSample extends StatelessWidget {
  const DividerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Divider Sample'),
          Divider(
            height: 12,
            thickness: 12,
            color: Colors.red,
            indent: 12,
            endIndent: 12,
            radius: BorderRadius.circular(24),
          ),
          Text('Divider Sample'),
        ],
      ),
    );
  }
}
