
import 'package:flutter/material.dart';

class SmsImage extends StatelessWidget {
  const SmsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/sms_image.jpg', // sms image from assets
      height: 250,
      fit: BoxFit.contain,
    );
  }
}
