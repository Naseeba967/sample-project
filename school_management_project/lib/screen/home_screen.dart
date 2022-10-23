import 'package:flutter/material.dart';
import 'package:school_management_project/screen/TeachersScreen/teacher_login_screen.dart';
import 'package:school_management_project/screen/admin/admin_home_screen.dart';
import 'package:school_management_project/screen/principleScreen/principle_login_screen.dart';
import 'package:school_management_project/screen/studentsScreen/student_login_screen.dart';
import 'package:school_management_project/screen/visiterScreen/visiter_login_screen.dart';
import 'package:school_management_project/widgets/constant.dart';
import 'package:school_management_project/widgets/home_screen_widget.dart';

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
          HomeScreenWidget(text: 'login/SignUp Visiter',function:  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const VisiterLoginScreen()),
      ),),
          const SizedBox(
            height: 26,
          ),
          HomeScreenWidget(text: 'login as  Students',function:  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const StudentLoginScreen()),
      ),),
          const SizedBox(height: 26),
          HomeScreenWidget(text: 'login as  Teacher',function:  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const TeacherLoginScreen()),
      ), ),
          const SizedBox(
            height: 26,
          ),
          HomeScreenWidget(text: 'login as Admin', function:  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const AdminHomeScreen()),
      ),),
          const SizedBox(
            height: 26,
          ),
          HomeScreenWidget(text: 'login as principle',function:  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const PrincipleScreen()),
      ),),
        ],
      ),
    );
  }

 
}
