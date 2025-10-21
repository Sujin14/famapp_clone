import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class VerificationItem extends StatelessWidget {
  final bool isSuccess;
  final String mainText;
  final String? subText;
  final Widget? subTextWidget;
  final String? leadingAsset;
  final String? trailingAsset;

  const VerificationItem({
    super.key,
    required this.isSuccess,
    required this.mainText,
    this.subText,
    this.subTextWidget,
    this.leadingAsset,
    this.trailingAsset,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = isSuccess
        ? AppTextStyles.summaryItemMain
        : AppTextStyles.summaryItemMain.copyWith(color: AppColors.accentRed);

    Widget leadingWidget = leadingAsset != null
        ? Image.asset(
            leadingAsset!,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          )
        : const SizedBox(width: 40, height: 40);

    Widget? trailingWidget = trailingAsset != null
        ? Image.asset(
            trailingAsset!,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          )
        : null;

    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      leading: leadingWidget,
      title: Text(
        mainText,
        style: titleStyle,
        maxLines: 2,
        overflow: TextOverflow.visible,
      ),
      subtitle: subTextWidget ??
          (subText != null
              ? Text(subText!, style: AppTextStyles.summaryItemSub)
              : null),
      trailing: trailingWidget,
    );
  }
}