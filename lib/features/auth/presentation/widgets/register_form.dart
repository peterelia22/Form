import 'package:flutter/material.dart';
import 'package:login_register/core/constants/app_styles.dart';
import 'package:login_register/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/custom_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          labelText: 'Full Name',
          hintText: 'example@example.com',
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Email',
          hintText: 'example@example.com',
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Mobile Number',
          hintText: '+966',
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Date Of Birth',
          hintText: 'DD / MM / YY',
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Password',
          hintText: '*******',
          isPassword: true,
        ),
        SizedBox(height: 5),
        CustomTextField(
          labelText: 'Confirm Password',
          hintText: '*******',
          isPassword: true,
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            'By continuing , you agree to \n Terms of Use and Privacy Policy.',
            style: AppStyles.labelTextStyle,
          ),
        ),
        SizedBox(height: 10),
        CustomButton(
          text: 'Sign Up',
        ),
      ],
    );
  }
}
