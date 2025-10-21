import 'package:flutter/material.dart';

class SmsImage extends StatelessWidget {
  const SmsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Image.asset(
        'assets/images/sms_image.jpg', // sms image from assets
        height: 250,
        fit: BoxFit.contain,
      ),
    );
  }
}