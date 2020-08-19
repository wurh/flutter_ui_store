import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_ui_store/pages/medical_demo.dart';
import 'package:flutter_ui_store/pages/storyui_demo.dart';



Handler medicalHandler =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    return MedicalDemo();
  }
);

Handler storyuiHandler = Handler(handlerFunc: (BuildContext context,Map<String,List<String>> params){
  return StoryUIPage();
});