import 'package:flutter/material.dart';

class PhoneImage extends StatelessWidget {
  const PhoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/phone_image.jpg', // Phone Image image from assets
      height: 100,
      width: 150,
      fit: BoxFit.contain,
    );
  }
}
