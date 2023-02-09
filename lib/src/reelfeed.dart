import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reelfeed extends StatelessWidget {
  const Reelfeed({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
        Container(
          color: Colors.green[200],
        ),
      ],
    );
  }
}
