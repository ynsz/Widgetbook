import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ListTile', type: ListTileSample)
ListTileSample listTileSample(BuildContext context) {
  return const ListTileSample();
}

class ListTileSample extends StatelessWidget {
  const ListTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: Text('ListTile Sample'),
        leading: Icon(Icons.favorite),
        trailing: Icon(Icons.more_vert),
        tileColor: Colors.red,
        onTap: () {
          print('ListTile tapped');
        },
      ),
    );
  }
}
