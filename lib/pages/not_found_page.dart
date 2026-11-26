import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../shared/layouts/tablet_page_layout.dart';
import '../shared/widgets/app_card.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) => TabletPageLayout(
        child: Center(
          child: AppCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Page not found',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  path,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.steel),
                ),
                const SizedBox(height: AppSpacing.md),
                FilledButton(
                  onPressed: () => context.go('/'),
                  child: const Text('Developer dashboard'),
                ),
              ],
            ),
          ),
        ),
      );
}
