import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:power/screens/Register.dart';
import 'package:power/screens/login.dart';
import 'package:power/utils/blobs.dart';
import 'package:power/utils/colors.dart';

void main() {
  runApp(const start());
}

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: one,
        scaffoldBackgroundColor: Colors.white
      ),
      home: login(),
    );
  }
}