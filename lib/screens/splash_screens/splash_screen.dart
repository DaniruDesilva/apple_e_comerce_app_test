import 'dart:async';

import 'package:apple_e_comerce_app/screens/auth_screens/auth_screen.dart';
import 'package:apple_e_comerce_app/utility/custom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      CustomNavigator.pushReplacement(context, const AuthScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: size.width * 0.4,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CupertinoActivityIndicator(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'From Apple.Inc',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
