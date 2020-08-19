import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_store/constants/medical/constant.dart';
import 'package:flutter_ui_store/pages/boot_page.dart';
import 'package:flutter_ui_store/pages/splash_page.dart';
import 'package:flutter_ui_store/routers/application.dart';
import 'package:flutter_ui_store/routers/routes.dart';
import 'package:flutter_ui_store/screen/startup/startup_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final router = Router();
    Routes.configureRoutes(router);
    Application.router=router;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        '/BootPage': (ctx)=> BootPage()
      },
    );
  }
}




