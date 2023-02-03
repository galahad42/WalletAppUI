import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';

class MyOptions extends StatelessWidget {
  final String heading;
  final String description;
  final Image icon;
  const MyOptions(
      {super.key,
      required this.icon,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DropShadow(child: icon, spread: 0.7, blurRadius: 7),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            Container(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[500],
              ),
            )
          ],
        ),
      ),
    );
  }
}
