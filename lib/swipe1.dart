import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kcal_app_lopez/home.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              titleWidget: title('kcal'),
              bodyWidget: body("assets/eating.png", "Eat Healthy",
                  "Maintaining good health should\n be the primary focus of everyone."),
              footer: MyButton(),
            ),
            PageViewModel(
              titleWidget: title('kcal'),
              bodyWidget: body("assets/cooking.png", "Healthy Recipes",
                  "Browse thousands of healthy\n recipes from all over the world."),
              footer: MyButton(),
            ),
            PageViewModel(
              titleWidget: title('kcal'),
              bodyWidget: body("assets/progress.png", "Track Your Health",
                  "With amazing inbuilt tools you\n can track your progress."),
              footer: MyButton(),
            )
          ],
          done: Text('', style: TextStyle(fontWeight: FontWeight.bold)),
          onDone: () {},
          showNextButton: false,
          next: Text('Next'),
          dotsDecorator: decoDots(),
        ),
      );
}

DotsDecorator decoDots() => DotsDecorator(
      color: Color(0xFFFFCDD2),
      activeColor: Color(0xFFEF9A9A),
      size: Size(13, 13),
      activeSize: Size(23, 13),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );

Widget title(String title) => Container(
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.green[300],
        ),
        textAlign: TextAlign.center,
      ),
    );

Widget body(String path, String head, String body) => Container(
      child: Column(children: [
        Image.asset(path, width: 250),
        SizedBox(
          height: 20,
        ),
        Text(head,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
        SizedBox(
          height: 20,
        ),
        Text(
          body,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<MyButton> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
              width: 300,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      )))),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Already Have An Account?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ))
          ])
        ],
      );
}
