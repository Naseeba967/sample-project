import 'package:flutter/material.dart';
class  DashBoard extends StatefulWidget {
  const  DashBoard({super.key});

  @override
  State<  DashBoard> createState() =>   DashBoardState();
}

class   DashBoardState extends State < DashBoard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Text('DashBoard'),
    );
  }
}