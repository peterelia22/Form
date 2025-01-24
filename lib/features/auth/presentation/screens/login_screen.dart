import 'package:flutter/material.dart';
import 'package:login_register/core/constants/app_styles.dart';
import 'package:login_register/core/widgets/custom_text_field.dart';
import 'package:login_register/features/auth/presentation/screens/register_screen.dart';
import 'package:login_register/features/auth/presentation/widgets/login_form.dart';
import '../widgets/social_media_auth.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const WelcomeTextWidget(),
            const SizedBox(
              height: 20,
            ),
            const LoginForm(),
            const SizedBox(
              height: 7,
            ),
            const Center(
              child: Text(
                'Forgot Password?',
                style: AppStyles.labelTextStyle,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                'or sign up with',
                style: AppStyles.labelTextStyle
                    .copyWith(fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SocialMediaAuth(),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    (MaterialPageRoute(builder: (context) {
                      return const RegisterScreen();
                    })));
              },
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account? ',
                    style: AppStyles.labelTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign Up',
                          style: AppStyles.labelTextStyle
                              .copyWith(color: Color(0xffE2BCB1))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
