import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Image image;
  final String option;

  const MyButtons({Key? key, required this.image, required this.option})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              //Colors.grey[300],

              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFBEBEBE),
                  offset: Offset(10, 10),
                  blurRadius: 30,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-10, -10),
                  blurRadius: 30,
                  spreadRadius: 1,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: image,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            option,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[500],
            ),
          ),
        ),
      ],
    );
  }
}
