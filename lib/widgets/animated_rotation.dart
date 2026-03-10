import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AnimatedRotation', type: AnimatedRotationSample)
AnimatedRotationSample animatedRotationSample(BuildContext context) {
  return const AnimatedRotationSample();
}

class AnimatedRotationSample extends StatefulWidget {
  const AnimatedRotationSample({super.key});

  @override
  State<AnimatedRotationSample> createState() => _AnimatedRotationSampleState();
}

class _AnimatedRotationSampleState extends State<AnimatedRotationSample> {
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 24,
          children: [
            AnimatedRotation(
              turns: _turns,
              duration: const Duration(seconds: 1),
              child: Text('Tap the box to rotate'),
            ),
            ElevatedButton(
              onPressed: () {
                _turns += 0.25;
                setState(() {});
              },
              child: Text('Rotate Box'),
            ),
          ],
        ),
      ),
    );
  }
}
