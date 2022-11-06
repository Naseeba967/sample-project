import 'package:flutter/material.dart';

class ContainerClass extends StatefulWidget {
  final String text;
  const ContainerClass({super.key, required this.text});

  @override
  State<ContainerClass> createState() => _ContainerClassState();
}

class _ContainerClassState extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Colors.black;
        setState(() {
          
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(11),
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            shape: BoxShape.rectangle,
            color: Colors.white),
        child: InkWell(
          onTap: () {},
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
