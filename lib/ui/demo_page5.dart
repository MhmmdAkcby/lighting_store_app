import 'package:flutter/material.dart';

class DemoPage5 extends StatefulWidget {
  const DemoPage5({super.key});

  @override
  State<DemoPage5> createState() => _DemoPage5State();
}

class _DemoPage5State extends State<DemoPage5> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Demo Page 5',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
