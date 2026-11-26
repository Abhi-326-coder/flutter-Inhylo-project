import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, this.title = 'INHYLO', this.statusArea});

  final String title;
  final Widget? statusArea;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.md,
        ),
        decoration: const BoxDecoration(
          color: AppColors.canvas,
          border: Border(bottom: BorderSide(color: AppColors.hairline)),
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: AppSpacing.xs,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: AppColors.brandNavy),
            ),
            if (statusArea != null) statusArea!,
          ],
        ),
      );
}
