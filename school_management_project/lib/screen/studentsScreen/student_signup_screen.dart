import 'package:flutter/material.dart';
import 'package:school_management_project/screen/studentsScreen/student_home_screen.dart';
import 'package:school_management_project/screen/studentsScreen/student_login_screen.dart';
import 'package:school_management_project/widgets/constant.dart';

import '../../widgets/textfieldinput.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                "Create an account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Get access by creating an account",
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
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                    width: 220,
                    child: TextFieldInput(
                        textEditingController: passwordController,
                        hintText: "Enter your email",
                        textInputType: TextInputType.emailAddress),
                  ),
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
        const Divider(),
        const SizedBox(height: 26),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
                onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>const StudentHomeScreen(),));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  height: 30,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      shape: BoxShape.rectangle,
                      color: backgroundColor),
                  child: const Text(
                    "Create my account",
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
              'Already  have an account ? ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentLoginScreen(),
                    ));
              },
              child: const Text(
                'Log in',
                style: TextStyle(color: backgroundColor),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
