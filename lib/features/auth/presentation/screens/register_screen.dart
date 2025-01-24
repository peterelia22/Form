import 'package:flutter/material.dart';
import 'package:login_register/features/auth/presentation/screens/login_screen.dart';
import 'package:login_register/features/auth/presentation/widgets/register_form.dart';

import '../../../../core/constants/app_styles.dart';
import '../widgets/login_form.dart';
import '../widgets/social_media_auth.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Create Account',
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
            const RegisterForm(),
            const SizedBox(
              height: 7,
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
                      return const LoginScreen();
                    })));
              },
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
                    style: AppStyles.labelTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Log in',
                          style: AppStyles.labelTextStyle
                              .copyWith(color: Color(0xffE2BCB1))),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
