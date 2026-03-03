import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Table', type: TableSample)
TableSample tableSample(BuildContext context) {
  return const TableSample();
}

class TableSample extends StatelessWidget {
  const TableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        columnWidths: {
          0: FixedColumnWidth(100),
          1: FlexColumnWidth(),
          2: IntrinsicColumnWidth(),
        },
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 1')),
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 2')),
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 3')),
              ),
            ],
          ),
          TableRow(
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 1')),
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 2')),
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
                child: const Center(child: Text('Row 1, Col 3')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
