import 'package:flutter/material.dart';

class MainCategory extends StatefulWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  _MainCategoryState createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Cookies'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/cookie.png"),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Burgers'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/burger.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Cakes'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/cake.png"),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Pizza'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/pizza.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Hotdog'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/hotdog.png"),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Fries'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/fries.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
            width: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Donuts'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/donut.png"),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                child: RaisedButton.icon(
                  onPressed: () {},
                  label: Text('Choco'),
                  color: Colors.yellow[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  icon: Image.asset("assets/choco.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
