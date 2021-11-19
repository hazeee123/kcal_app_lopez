import 'package:flutter/material.dart';
import 'package:kcal_app_lopez/categories.dart';
import 'package:kcal_app_lopez/categories2.dart';
import 'home.dart';

class FoodCategory extends StatefulWidget {
  const FoodCategory({Key? key}) : super(key: key);

  @override
  _FoodCategoryState createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.black,
              backwardsCompatibility: false,
              backgroundColor: Colors.white24,
              elevation: 0,
              title: Text('Favorites'),
              centerTitle: true,
              automaticallyImplyLeading: false,
              bottom: new PreferredSize(
                  preferredSize: new Size(300, 50),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 300,
                      child: new TabBar(
                        unselectedLabelColor: Colors.green[200],
                        indicator: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tabs: [
                          new Container(
                            height: 50,
                            child: Tab(
                              child: Text(
                                'Foods',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          new Container(
                              height: 50,
                              child: Tab(
                                  child: Text('Recipes',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ))))
                        ],
                      )))),
          body: TabBarView(
            children: [
              MainCategory(),
              MainCategory2(),
            ],
          ),
        ),
      );
}
