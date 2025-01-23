import 'package:flutter/material.dart';
import 'package:login_register/features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(const Form());
}

class Form extends StatelessWidget {
  const Form({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
