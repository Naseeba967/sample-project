import 'package:flutter/material.dart';
import 'package:school_management_project/screen/TeachersScreen/teacher_login_screen.dart';
import 'package:school_management_project/screen/admin/admin_home_screen.dart';
import 'package:school_management_project/screen/principleScreen/principle_login_screen.dart';
import 'package:school_management_project/screen/studentsScreen/student_login_screen.dart';
import 'package:school_management_project/screen/visiterScreen/visiter_login_screen.dart';

Color textcolor = Colors.white;
Color backgroundColor = Colors.amber;
FontWeight fontWeight = FontWeight.bold;
const list = [
  VisiterLoginScreen(),
 StudentLoginScreen(),
  TeacherLoginScreen(),
  AdminHomeScreen(),
  PrincipleScreen()
 
];
