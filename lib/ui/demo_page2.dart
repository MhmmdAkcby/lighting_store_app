import 'package:flutter/material.dart';

class DemoPage2 extends StatefulWidget {
  const DemoPage2({super.key});

  @override
  State<DemoPage2> createState() => _DemoPage2State();
}

class _DemoPage2State extends State<DemoPage2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Demo Page 2',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
