import 'package:flutter/material.dart';

class ScreenCanvas extends StatelessWidget {
  final List<Widget> widgets;
  const ScreenCanvas({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
              children: widgets
          ),
        ),
      ),
    );
  }
}