import 'package:flutter/material.dart';

class DemoPage3 extends StatefulWidget {
  const DemoPage3({super.key});

  @override
  State<DemoPage3> createState() => _DemoPage3State();
}

class _DemoPage3State extends State<DemoPage3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Demo Page 3',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
