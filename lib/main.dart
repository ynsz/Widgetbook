import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: ThemeData.light()),
            WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
          ],
        ),
        ViewportAddon([
          ViewportData(
            name: 'iPhone-SE',
            width: 375,
            height: 667,
            pixelRatio: 2.0,
            platform: TargetPlatform.iOS,
          ),
          ViewportData(
            name: 'iPhone-15-Pro',
            width: 393,
            height: 852,
            pixelRatio: 3.0,
            platform: TargetPlatform.iOS,
          ),
          ViewportData(
            name: 'Pixel-7',
            width: 412,
            height: 915,
            pixelRatio: 2.6,
            platform: TargetPlatform.android,
          ),
          ViewportData(
            name: 'iPad-Portrait',
            width: 820,
            height: 1180,
            pixelRatio: 2.0,
            platform: TargetPlatform.iOS,
          ),
          ViewportData(
            name: 'Android-Tablet',
            width: 800,
            height: 1280,
            pixelRatio: 2.0,
            platform: TargetPlatform.android,
          ),
          ViewportData(
            name: 'MacBook-13',
            width: 1440,
            height: 900,
            pixelRatio: 2.0,
            platform: TargetPlatform.macOS,
          ),
          ViewportData(
            name: 'Web-Desktop',
            width: 1280,
            height: 800,
            pixelRatio: 1.0,
            platform: TargetPlatform.windows,
          )
        ]),
      ],
    );
  }
}
