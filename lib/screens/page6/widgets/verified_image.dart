// Displays the phone verification illustration

import 'package:flutter/material.dart';

class VerifiedImage extends StatelessWidget {
  const VerifiedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/sms_image.jpg', // Hat image from assets
      height: 250,
      fit: BoxFit.contain,
    );
  }
}
