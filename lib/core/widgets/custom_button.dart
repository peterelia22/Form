import 'package:flutter/material.dart';

import '../constants/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xffF9A892)),
          minimumSize: MaterialStateProperty.all(const Size(200, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.buttonTextStyle,
        ),
      ),
    );
  }
}
