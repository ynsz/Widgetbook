import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ExpansionTile', type: ExpansionTileSample)
ExpansionTileSample expansionTileSample(BuildContext context) {
  return const ExpansionTileSample();
}

class ExpansionTileSample extends StatelessWidget {
  const ExpansionTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text('ExpansionTile Sample'),
            children: [
              ListTile(title: const Text('ListTile 1')),
              ListTile(title: const Text('ListTile 2')),
              ListTile(title: const Text('ListTile 3')),
            ],
          ),
          ExpansionTile(
            title: Text('ExpansionTile Sample'),
            initiallyExpanded: true,
            backgroundColor: Colors.red,
            trailing: Icon(Icons.favorite),
            onExpansionChanged: (isExpanded) {
              print('ExpansionTile expanded: $isExpanded');
            },
            children: [
              ListTile(title: const Text('ListTile 1')),
            ],
          ),
        ],
      ),
    );
  }
}
