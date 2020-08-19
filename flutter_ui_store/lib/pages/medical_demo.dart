import 'package:flutter/material.dart';
import 'package:flutter_ui_store/screen/startup/startup_screen.dart';

class MedicalDemo extends StatefulWidget {
  @override
  _MedicalDemoState createState() => _MedicalDemoState();
}

class _MedicalDemoState extends State<MedicalDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  StartupScreen(),
    );
  }
}