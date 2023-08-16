import 'package:flutter/material.dart';

class barpage extends StatefulWidget {
  const barpage({super.key});

  @override
  State<barpage> createState() => _barpageState();
}

class _barpageState extends State<barpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('barchart page'),
    );
  }
}
