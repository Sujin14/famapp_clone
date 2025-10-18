
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/continue_button.dart';
import 'widgets/verified_header.dart';
import 'widgets/verified_image.dart';

class Page6Screen extends StatelessWidget {
  const Page6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D0C1D), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom Back Button (instead of AppBar for full-screen gradient)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => context.pop(), // GoRouter pop
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: VerifiedHeader(
                  title: 'Let\'s verify your phone number',
                  phoneNumber: '9746942596',
                ),
              ),

              const Spacer(),

              // Illustration (centered)
              const VerifiedImage(),

              const Spacer(),

              // Continue Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ContinueButton(
                  onPressed: () => context.pop(), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}