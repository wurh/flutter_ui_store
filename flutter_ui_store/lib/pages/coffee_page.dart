import 'package:flutter/material.dart';
import 'package:flutter_ui_store/pages/coffee/splash/splash_screen.dart';
class CoffeeDemo extends StatefulWidget {
  CoffeeDemo({Key key}) : super(key: key);

  @override
  _CoffeeDemoState createState() => _CoffeeDemoState();
}

class _CoffeeDemoState extends State<CoffeeDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: SplashScreen(),
    );
  }
}