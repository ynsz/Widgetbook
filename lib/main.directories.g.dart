// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widget_book/widgets/app_bar.dart'
    as _widget_book_widgets_app_bar;
import 'package:widget_book/widgets/image.dart' as _widget_book_widgets_image;
import 'package:widget_book/widgets/scaffold.dart'
    as _widget_book_widgets_scaffold;
import 'package:widget_book/widgets/text.dart' as _widget_book_widgets_text;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'AppBarSample',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Scaffold',
            builder: _widget_book_widgets_app_bar.scaffoldSample,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'ImageSample',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Scaffold',
            builder: _widget_book_widgets_image.scaffoldSample,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'ScaffoldSample',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Scaffold',
            builder: _widget_book_widgets_scaffold.scaffoldSample,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'TextSample',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Scaffold',
            builder: _widget_book_widgets_text.scaffoldSample,
          ),
        ],
      ),
    ],
  ),
];
