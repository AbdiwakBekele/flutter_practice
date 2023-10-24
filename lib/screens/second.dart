import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final result;
  final Color res_color;
  Second({super.key, required this.result, required this.res_color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Text(
          result.toString(),
          style: TextStyle(color: res_color),
        ),
      ),
    );
  }
}
