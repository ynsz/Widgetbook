import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Scrollbar', type: ScrollbarSample)
ScrollbarSample scrollbarSample(BuildContext context) {
  return const ScrollbarSample();
}

class ScrollbarSample extends StatelessWidget {
  const ScrollbarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawScrollbar(
        thumbColor: Colors.grey,
        thickness: 10,
        thumbVisibility: true,
        radius: Radius.circular(24),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => Text('Item $index'),
        ),
      ),
    );
  }
}
