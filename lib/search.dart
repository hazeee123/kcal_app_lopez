import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          title: Text('Search'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(child: Text('Search', style: TextStyle(fontSize: 40))),
      );
}
