import 'package:flutter/material.dart';
import 'package:fam_app/screens/page5/widgets/rewards_image.dart';
import 'widgets/get_verified_button.dart';
import 'widgets/profile_header.dart';
import 'widgets/rewards_subtitle.dart';
import 'widgets/scan_title.dart';
import 'widgets/upi_searchbar.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class Page5Screen extends StatelessWidget {
  const Page5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientStart, AppColors.gradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const ProfileHeader(),
              const UpiSearchBar(),
              const ScanTitle(),
              const RewardsImage(),
              const RewardsSubtitle(),
              const Spacer(flex: 1),
              const GetVerifiedButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
