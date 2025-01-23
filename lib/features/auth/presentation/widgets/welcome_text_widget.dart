import 'package:flutter/material.dart';
import '../../../../core/constants/app_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome',
            style: AppStyles.welcomeTextStyle,
          ),
          const SizedBox(height: 6),
          Text(
            'Please enter your details to proceed .',
            style: AppStyles.welcomeTextStyle
                .copyWith(fontSize: 11, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
