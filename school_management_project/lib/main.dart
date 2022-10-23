import 'package:flutter/material.dart';
import 'package:school_management_project/screen/admin/attendance.dart';
import 'package:school_management_project/screen/admin/dashboard.dart';
import 'package:school_management_project/screen/admin/routine.dart';
import 'package:school_management_project/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/Attendance': (context) => const Attendance(),
        '/DashBoard': (context) => const DashBoard(),
        '/Routine': (context) => const Routine()
      },
    );
  }
}
