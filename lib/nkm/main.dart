import 'package:flutter/material.dart';
import 'package:accident/monitoringscreen.dart';
import 'login.dart';
import 'settings.dart';
import 'registerpage.dart';
import 'user.dart';
import 'report.dart'; // Import the new page

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
        '/register': (context) => RegisterPage(),
        '/user': (context) => UserPage(),
        '/accident_report': (context) => AccidentReportPage(), // Add new route
      },
    );
  }
}