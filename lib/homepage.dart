import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          title: Text('Home'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(child: Text('Home', style: TextStyle(fontSize: 40))),
      );
}
