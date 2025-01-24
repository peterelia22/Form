import 'package:flutter/material.dart';
import '../constants/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool isPassword;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isObscure = ValueNotifier<bool>(isPassword);

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppStyles.labelTextStyle,
          ),
          const SizedBox(height: 3),
          ValueListenableBuilder<bool>(
            valueListenable: isObscure,
            builder: (context, value, child) {
              return TextField(
                obscureText: value,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: AppStyles.hintTextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFAF0E6),
                  suffixIcon: isPassword
                      ? IconButton(
                          icon: Icon(
                            value ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            isObscure.value = !value;
                          },
                        )
                      : null,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
