import 'package:flutter/material.dart';

class ScreenCanvas extends StatelessWidget {
  final List<Widget> appBarActions;
  final List<Widget> widgets;
  const ScreenCanvas({super.key, required this.widgets, required this.appBarActions});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: appBarActions,
        ),
        body: Center(
          child: Column(
              children: widgets
          ),
        ),
      ),
    );
  }
}