import 'package:flutter/material.dart';
import 'package:accident_detection/monitoringscreen.dart';
import 'login.dart';
import 'settings.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => LoginRegisterPage(),
        '/monitoring': (context) => MonitoringPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}