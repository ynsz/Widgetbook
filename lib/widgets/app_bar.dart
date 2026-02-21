import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Scaffold', type: AppBarSample)
AppBarSample scaffoldSample(BuildContext context) {
  return const AppBarSample();
}

class AppBarSample extends StatelessWidget {
  const AppBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Sample'),
        backgroundColor: Colors.red,
        centerTitle: false,
        leading: Text('leading'),
        actions: [Text('actions1'), Text('actions2')],
      ),
    );
  }
}
