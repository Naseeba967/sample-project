import 'package:flutter/material.dart';
import 'package:school_management_project/screen/TeachersScreen/teacher_signup_screen.dart';
import 'package:school_management_project/widgets/constant.dart';

import '../../widgets/textfieldinput.dart';

class TeacherLoginScreen extends StatefulWidget {
  const TeacherLoginScreen({super.key});

  @override
  State<TeacherLoginScreen> createState() => _TeacherLoginScreenState();
}

class _TeacherLoginScreenState extends State<TeacherLoginScreen> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 105,
        ),
        Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Log in",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "welcome to school please put your login credentials  below  to start  using our application",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                    width: 220,
                    child: TextFieldInput(
                        textEditingController: usernameController,
                        hintText: "Enter first Name",
                        textInputType: TextInputType.text),
                  )
                ],
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                    width: 220,
                    child: TextFieldInput(
                        textEditingController: passwordController,
                        hintText: "Enter your password",
                        textInputType: TextInputType.text),
                  ),
                ],
              )
            ]),
        const SizedBox(height: 26),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: const Text("forgot Password?",
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 26),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(11),
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      shape: BoxShape.rectangle,
                      color: backgroundColor),
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account ? ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const TeacherSignUpScreen())));
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: backgroundColor),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
