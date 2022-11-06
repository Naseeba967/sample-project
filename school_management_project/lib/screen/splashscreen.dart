import 'package:flutter/material.dart';
import 'package:school_management_project/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('assets/images/splashPicture.jpg'),
          ),
          const SizedBox(
            height: 50,
          ),
          const CircularProgressIndicator(
            color: Colors.blue,
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'School Management System',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    setState(() {});

    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
