import 'package:flutter/material.dart';
import 'package:login_register/core/constants/app_styles.dart';
import 'package:login_register/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/custom_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          labelText: 'Username Or Email',
          hintText: 'example@example.com',
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Password',
          hintText: '*******',
          isPassword: true,
        ),
        SizedBox(height: 10),
        CustomButton(
          text: 'Log in',
        ),
      ],
    );
  }
}
