import 'package:flutter/material.dart';
import 'package:school_management_project/widgets/constant.dart';

class HomeScreenWidget extends StatelessWidget {
  String text;
  Future function;

  HomeScreenWidget({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        list;
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
