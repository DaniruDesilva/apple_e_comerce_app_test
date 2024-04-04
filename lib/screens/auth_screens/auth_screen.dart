import 'package:flutter/material.dart';

import '../../components/buttons/custom_button.dart';
import 'widget/custom_text_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.25,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/auth_banner.jpeg'))),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  Text(
                    'Sign Up With Your User Account',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hint: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  const CustomTextField(
                    hint: 'Password',
                    prefixIcon: Icons.password_rounded,
                    isPassword: true,
                  ),
                  const CustomTextField(
                    hint: 'Confirm Password',
                    prefixIcon: Icons.password_rounded,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    size: size,
                    text: "Sign Up",
                  ),
                  CustomButton(
                    size: size,
                    text: "Sign In",
                    bgColor: Colors.white,
                    fontColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
