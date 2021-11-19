import 'package:flutter/material.dart';

class Capture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          title: Text('Capture'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(child: Text('Capture', style: TextStyle(fontSize: 40))),
      );
}
