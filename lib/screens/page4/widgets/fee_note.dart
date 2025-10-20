import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class FeeNote extends StatelessWidget {
  const FeeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromARGB(255, 76, 76, 77)),
        gradient: const RadialGradient(
          colors: [
            Color.fromARGB(103, 151, 135, 243),
            Color(0xFF2D274B),           
          ],
          stops: [0.0, 1.0],
          center: Alignment.center,
          radius: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.info_outline,
            size: 20,
            color: AppColors.accentOrange,
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '₹99 nominal fee applicable for',
                  style: TextStyle(
                    color: AppColors.accentOrange,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'video verification',
                  style: TextStyle(
                    color: AppColors.accentOrange,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}