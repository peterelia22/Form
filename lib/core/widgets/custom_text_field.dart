import 'package:flutter/material.dart';

import '../constants/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppStyles.labelTextStyle,
          ),
          SizedBox(
            height: 3,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppStyles.hintTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Color(0xffFAF0E6),
            ),
          ),
        ],
      ),
    );
  }
}
