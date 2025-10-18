import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

// ContinueButton is a reusable, full-width button widget
class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Make the button full-width
      width: double.infinity,
      height: 52,
      
      child: ElevatedButton(
        onPressed: (){},

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentOrange,
          foregroundColor: Colors.black, 
          
          // Rounded pill-shaped corners
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),

        // Button text
        child: const Text(
          'Continue', 
          style: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}
