import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ClipRRect', type: ClipRRectSample)
ClipRRectSample clipRRectSample(BuildContext context) {
  return const ClipRRectSample();
}

class ClipRRectSample extends StatelessWidget {
  const ClipRRectSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ClipRRect(
      borderRadius: BorderRadius.circular(24),
        child: Image.asset('assets/shiba.jpg')));
  }
}
