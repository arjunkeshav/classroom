import 'package:classroom/core/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: HomeConst.hello,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
          ),
          TextSpan(
            text: HomeConst.goodMorning,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),);
  }
}
