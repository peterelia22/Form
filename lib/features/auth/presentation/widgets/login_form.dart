import 'package:flutter/material.dart';
import 'package:login_register/core/constants/app_styles.dart';
import 'package:login_register/core/widgets/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextField(
          labelText: 'Username Or Email',
          hintText: 'example@example.com',
        ),
        const SizedBox(height: 5),
        const CustomTextField(
          labelText: 'Password',
          hintText: '*******',
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xffF9A892)),
              minimumSize: MaterialStateProperty.all(const Size(200, 50)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Log in',
              style: AppStyles.buttonTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
