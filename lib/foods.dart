import 'package:flutter/material.dart';
import 'package:kcal_app_lopez/foodCategory.dart';
import 'home.dart';
import 'foodCategory.dart';

class FoodSection extends StatefulWidget {
  const FoodSection({Key? key}) : super(key: key);

  @override
  _FoodSectionState createState() => _FoodSectionState();
}

class _FoodSectionState extends State<FoodSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        SizedBox(
          height: 120,
        ),
        Opacity(
          opacity: 0.20,
          child: Container(
            width: 120,
            height: 120,
            child: Image(
              image: AssetImage("assets/salad.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text('No Foods Found',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.black54,
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          child: Text(
            'You don\'t save any food. Go ahead,\n search and save your favorite food.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Search(),
      ])),
    );
  }
}

class Search extends StatefulWidget {
  //const Search({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<Search> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
              width: 300,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodCategory()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  child: Text('Search',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      )))),
        ],
      );
}
