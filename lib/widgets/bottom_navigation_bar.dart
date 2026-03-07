import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'BottomNavigationBar',
  type: BottomNavigationBarSample,
)
BottomNavigationBarSample bottomNavigationBarSample(BuildContext context) {
  return const BottomNavigationBarSample();
}

class BottomNavigationBarSample extends StatefulWidget {
  const BottomNavigationBarSample({super.key});

  @override
  State<BottomNavigationBarSample> createState() =>
      _BottomNavigationBarSampleState();
}

class _BottomNavigationBarSampleState extends State<BottomNavigationBarSample> {
  final pages = [const Page1(), const Page2(), const Page3()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page1'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Page2'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Page3'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Page1'));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Page2'));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Page3'));
  }
}
