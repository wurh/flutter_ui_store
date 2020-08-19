import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  TimerUtil _timerUtil;
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('还剩下: ${_count}'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _doCountDown();
  }

  void _doCountDown() {
    _timerUtil = new TimerUtil(mTotalTime: 3 * 1000);
    _timerUtil.setOnTimerTickCallback((int tick) {
      double _tick = tick / 1000;
      setState(() {
        _count = _tick.toInt();
      });
      if (_tick == 0) {
        //_goMain();
        print("我要跳转页面了");
        Navigator.of(context).pushReplacementNamed("/BootPage");
      }
    });
    _timerUtil.startCountDown();
  }
}