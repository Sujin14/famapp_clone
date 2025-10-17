import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: const Center(
        child: Text(
          'Page 1 content here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
