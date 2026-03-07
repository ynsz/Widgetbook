import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Switch', type: SwitchSample)
SwitchSample switchSample(BuildContext context) {
  return const SwitchSample();
}

class SwitchSample extends StatefulWidget {
  const SwitchSample({super.key});

  @override
  State<SwitchSample> createState() => _SwitchSampleState();
}

class _SwitchSampleState extends State<SwitchSample> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          activeThumbColor: Colors.green,
          activeTrackColor: Colors.brown,
          value: isActive,
          onChanged: (value) => setState(() => isActive = value),
        ),
      ),
    );
  }
}
