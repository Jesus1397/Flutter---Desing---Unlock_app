import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3699CA),
      ),
      body: Container(
        child: Center(
          child: Text('Hi :V'),
        ),
      ),
    );
  }
}
