import 'package:flutter/material.dart';

class DemoPage4 extends StatefulWidget {
  const DemoPage4({super.key});

  @override
  State<DemoPage4> createState() => _DemoPage4State();
}

class _DemoPage4State extends State<DemoPage4> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Demo Page 4',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
