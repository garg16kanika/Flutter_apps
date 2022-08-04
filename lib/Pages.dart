import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  String text;

  Pages(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        centerTitle: true,
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
