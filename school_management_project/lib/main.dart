import 'package:flutter/material.dart';
import 'package:school_management_project/screen/admin/admin_home_screen.dart';
import 'package:school_management_project/screen/attendance.dart';
import 'package:school_management_project/screen/dashboard.dart';
import 'package:school_management_project/screen/routine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        '/Attendance': (context) => const Attendance(),
        '/DashBoard': (context) => const DashBoard(),
        '/Routine': (context) => const Routine()
      },
    );
  }
}
