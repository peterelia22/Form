import 'package:flutter/material.dart';

class SocialMediaAuth extends StatelessWidget {
  const SocialMediaAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.g_mobiledata), Icon(Icons.facebook)],
      ),
    );
  }
}
