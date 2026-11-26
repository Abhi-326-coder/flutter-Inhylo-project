import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../pages/placeholder_page.dart';
import '../../shared/layouts/tablet_page_layout.dart';
import '../../shared/widgets/app_button.dart';
import '../../shared/widgets/app_card.dart';

class DeveloperDashboardPage extends StatelessWidget {
  const DeveloperDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = <String, List<ScreenInfo>>{};
    for (final screen in PlaceholderPage.screens) {
      groups.putIfAbsent(screen.group, () => []).add(screen);
    }

    return TabletPageLayout(
      maxContentWidth: 1180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Developer dashboard',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            'Foundation route index · choose a screen placeholder to preview.',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: AppColors.steel),
          ),
          const SizedBox(height: AppSpacing.xxl),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 900 ? 2 : 1;
              final spacing = AppSpacing.md;
              final cardWidth =
                  (constraints.maxWidth - spacing * (columns - 1)) / columns;
              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: [
                  for (final entry in groups.entries)
                    SizedBox(
                      width: cardWidth,
                      child: AppCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.key,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: AppSpacing.md),
                            for (final screen in entry.value)
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: AppSpacing.xs,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: AppButton(
                                    label:
                                        '${screen.id} — ${screen.title}   ·   ${screen.path}',
                                    icon: Icons.open_in_new,
                                    onPressed: () => context.go(screen.path),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
