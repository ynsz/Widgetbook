import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Draggable', type: DraggableSample)
DraggableSample draggableSample(BuildContext context) {
  return const DraggableSample();
}

class DraggableSample extends StatefulWidget {
  const DraggableSample({super.key});

  @override
  State<DraggableSample> createState() => _DraggableSampleState();
}

class _DraggableSampleState extends State<DraggableSample> {
  int _dropedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 32,
          mainAxisSize: MainAxisSize.min,
          children: [
            Draggable<int>(
              data: 1,
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.redAccent.withValues(alpha: 0.5),
              ),
              childWhenDragging: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Text('DragTargetに持っていってください'),
              ),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.redAccent,
                child: Text('ドラッグ可能です'),
              ),
            ),
            DragTarget<int>(
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Text('ここにドロップしてください'),
                );
              },
              onAcceptWithDetails: (details) {
                setState(() {
                  _dropedData += details.data;
                });
              },
            ),
            Text('ドロップしたデータ: $_dropedData'),
          ],
        ),
      ),
    );
  }
}
