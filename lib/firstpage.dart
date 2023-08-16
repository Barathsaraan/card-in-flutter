import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello Barath',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.0, 1),
                  end: const FractionalOffset(1.0, 0.0),
                  colors: [
                    Colors.blue,
                    Colors.purple
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.clamp,
                ),
              ),
              height: 150,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.0, 1),
                  end: const FractionalOffset(1.0, 0.0),
                  colors: [
                    Colors.blue,
                    Colors.purple
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.clamp,
                ),
              ),
              height: 150,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.0, 1),
                  end: const FractionalOffset(1.0, 0.0),
                  colors: [
                    Colors.blue,
                    Colors.purple
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.clamp,
                ),
              ),
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
