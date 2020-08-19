import 'package:flutter/material.dart';
import './router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes{
  static String root='/';
  static String medicalDemo = '/medicaldemo';
  static String storyuiDemo = '/storyuidemo';
  static String coffeeDemo = '/coffeeDemo';
  static void configureRoutes(Router router){
    router.notFoundHandler= new Handler(
      handlerFunc: (BuildContext context,Map<String,List<String>> params){
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
      }
    );
    router.define(medicalDemo,handler:medicalHandler);
    router.define(storyuiDemo,handler:storyuiHandler);
     router.define(coffeeDemo,handler:coffeeHandler);
  }
}