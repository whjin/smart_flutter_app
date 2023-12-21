import 'package:flutter/material.dart';

class RightPage extends StatelessWidget {
  final String title;

  RightPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(child: Text(this.title, style: TextStyle(fontSize: 50))),
    );
  }
}
