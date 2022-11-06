import 'package:flutter/material.dart';
import 'package:school_management_project/widgets/constant.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
 final  bool _onClick = false;
 

  final TextStyle textStyle = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Student Name',
          style: TextStyle(color: blackTextColor),
        ),
        actions: [
          InkWell(
            onTap: () {
              
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              width: 100,
              height: 110,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: _onClick ? Colors.black : Colors.amber),
                  borderRadius: BorderRadius.circular(3),
                  shape: BoxShape.rectangle,
                  color: Colors.white),
              child: CircleAvatar(
                radius: 20,
                child: Image.asset(
                  'assets/images/defaultprofileimage.jpg',
                  fit: BoxFit.cover,
                  width: 70,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 42,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '   A  good ',
                style: textStyle,
              ),
              Text(
                'foundation ',
                style: TextStyle(
                    color: backgroundColor,
                    fontSize: 20,
                    fontWeight: fontWeight),
              ),
              Text(
                'is  a  foundation  for  better  future  ',
                style: textStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
