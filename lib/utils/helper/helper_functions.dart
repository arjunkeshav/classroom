import 'package:flutter/material.dart';

import '../../core/core.dart';

class HelperFunctions{
  static navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.homeScreen, (route) => false);
  }
}