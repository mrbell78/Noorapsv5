import 'package:flutter/material.dart';

import '../color-constant.dart';


class IncreaseWidget extends StatelessWidget {
  const IncreaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(
              "+",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
