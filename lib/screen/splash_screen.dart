import 'dart:async';

import 'package:class_test/screen/grid_view_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  final String name = "NAWARAJ";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => const GridViewScreen(
                  nameData: 'Nawaraj',
                )),
      ),
    );
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome Nawaraj Shrestha",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
