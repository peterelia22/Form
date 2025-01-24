import 'package:flutter/material.dart';
import 'package:login_register/core/constants/app_styles.dart';
import 'package:login_register/core/widgets/custom_text_field.dart';
import 'package:login_register/features/auth/presentation/widgets/login_form.dart';
import '../widgets/welcome_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Log in',
          style: AppStyles.appBarTittleTextStyle,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            WelcomeTextWidget(),
            SizedBox(
              height: 20,
            ),
            LoginForm()
          ],
        ),
      ),
    );
  }
}
