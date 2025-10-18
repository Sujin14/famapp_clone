import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'widgets/get_verified_button.dart';
import 'widgets/rewards_image.dart';
import 'widgets/rewards_subtitle.dart';
import 'widgets/scan_title.dart';
import 'widgets/upi_searchbar.dart';

class Page5Screen extends StatelessWidget {
  const Page5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          // Top header container
          Container(
            height: 250,
            width: double.infinity,
            color: AppColors.black,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 16,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 50, 50, 51)),
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 49, 27, 9),
                          Color.fromARGB(255, 30, 19, 2),
                          Color.fromARGB(255, 164, 113, 4),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'F',
                        style: TextStyle(
                          color: AppColors.accentOrange,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '₹0',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 200,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 34, 32, 32),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: const [
                  UpiSearchBar(),
                  SizedBox(height: 10),
                  ScanTitle(),
                  SizedBox(height: 10),
                  RewardsImage(),
                  RewardsSubtitle(),
                  GetVerifiedButton(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
