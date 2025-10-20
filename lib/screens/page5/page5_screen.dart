import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';

import 'widgets/get_verified_button.dart';
import 'widgets/profile_header.dart';
import 'widgets/rewards_image.dart';
import 'widgets/rewards_subtitle.dart';
import 'widgets/scan_title.dart';
import 'widgets/upi_searchbar.dart';

class Page5Screen extends StatelessWidget {
  const Page5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double headerHeight = (size.height * 0.36).clamp(280.0, 380.0);
    final double sheetOverlap = 70.0;
    final double sheetTop = headerHeight - sheetOverlap;
    final double sheetHeight = size.height - sheetTop;

    return Scaffold(
      backgroundColor: Color(0xFF2D274B),
      body: Stack(
        children: [
          Container(color: Color(0xFF2D274B)),

          SizedBox(
            height: headerHeight,
            width: double.infinity,
            child: Stack(
              children: [
                const Positioned(
                  top: 28,
                  left: 14,
                  child: ProfileAvatar(),
                ),

                Center(
                  child: Text(
                    '₹0',
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: sheetTop,
            left: 0,
            right: 0,
            height: sheetHeight,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF2D274B),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 10,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    const SizedBox(height: 18),

                    SizedBox(
                      height: sheetHeight - 18 - 10 - 5 - 24, 
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14.0),
                              child: UpiSearchBar(),
                            ),
                            const SizedBox(height: 25),

                            // Titles
                            const ScanTitle(),
                            const SizedBox(height: 15),

                            // Illustration
                            const RewardsImage(),

                            // Subtitle
                            const SizedBox(height: 10),
                            const RewardsSubtitle(),

                            // Get Verified button
                            const SizedBox(height: 20),
                            const GetVerifiedButton(),

                            const SizedBox(height: 28),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}