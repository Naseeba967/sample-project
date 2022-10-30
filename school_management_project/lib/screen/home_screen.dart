import 'package:flutter/material.dart';
import 'package:school_management_project/screen/TeachersScreen/teacher_login_screen.dart';
import 'package:school_management_project/screen/studentsScreen/student_login_screen.dart';
import 'package:school_management_project/screen/visiterScreen/visiter_login_screen.dart';
import 'package:school_management_project/widgets/constant.dart';

import 'admin/admin_login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          homeScreenWidget("login/SignUp Visiter", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VisiterLoginScreen()));
          }),
          const SizedBox(
            height: 26,
          ),
          homeScreenWidget("Student login Screen", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StudentLoginScreen()));
          }),
          const SizedBox(height: 26),
          homeScreenWidget("Teacher login Screen", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TeacherLoginScreen()));
          }),
          const SizedBox(
            height: 26,
          ),
          homeScreenWidget("Admin login Screen", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdminLoginScreen()));
          }),
          const SizedBox(
            height: 26,
          ),
          homeScreenWidget("Principle login Screen", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StudentLoginScreen()));
          }),
        ],
      ),
    );
  }

  Widget homeScreenWidget(String text, Function function) {
    return InkWell(
      onTap: () {
        function();
        setState(() {});
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(11),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              shape: BoxShape.rectangle,
              color: backgroundColor),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: textcolor, fontSize: 20, fontWeight: fontWeight),
            ),
          )),
    );
  }
}
