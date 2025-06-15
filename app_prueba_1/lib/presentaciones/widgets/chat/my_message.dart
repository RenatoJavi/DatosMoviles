import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          //height: 5,      //width: 2,
          decoration: BoxDecoration(
            //color: Colors.black,
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Padding(
            //padding: const EdgeInsets.all(3.0),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Zbot, robotica educativa',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
