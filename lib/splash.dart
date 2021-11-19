import 'package:flutter/material.dart';
import 'package:kcal_app_lopez/swipe1.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatetoswipe1();
  }

  navigatetoswipe1() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => OnBoardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[300],
        body: Center(
            child: Container(
          width: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash1.jpg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              Text('kcal',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 250,
              ),
              Text('ZUAMICA',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60)),
            ],
          ),
        )));
  }
}
