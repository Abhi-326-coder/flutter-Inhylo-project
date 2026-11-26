import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../shared/layouts/tablet_page_layout.dart';
import '../shared/widgets/app_card.dart';
import '../shared/widgets/app_status_indicator.dart';

class ScreenInfo {
  const ScreenInfo(this.id, this.title, this.path, this.group);
  final String id;
  final String title;
  final String path;
  final String group;
}

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key, required this.screen});

  final ScreenInfo screen;

  static const screens = <ScreenInfo>[
    ScreenInfo('T1a', 'Show QR', '/t1a', 'T1 - Link This Tablet'),
    ScreenInfo('T1b', 'Tablet Linked', '/t1b', 'T1 - Link This Tablet'),
    ScreenInfo('T1c', 'Already Linked', '/t1c', 'T1 - Link This Tablet'),
    ScreenInfo('T2a', 'New Ads', '/t2a', 'T2 - Download Ads'),
    ScreenInfo('T2b', 'Downloading Ads', '/t2b', 'T2 - Download Ads'),
    ScreenInfo('T2c', 'Ads Downloaded', '/t2c', 'T2 - Download Ads'),
    ScreenInfo('T2d', 'Download Failed', '/t2d', 'T2 - Download Ads'),
    ScreenInfo('T2e', 'No Internet', '/t2e', 'T2 - Download Ads'),
    ScreenInfo('T3a', 'Checking Readiness', '/t3a', 'T3 - Go Active'),
    ScreenInfo('T3b', 'Ready to Go Active', '/t3b', 'T3 - Go Active'),
    ScreenInfo('T3c', 'Cannot Go Active', '/t3c', 'T3 - Go Active'),
    ScreenInfo('T4a', 'Enter PIN', '/t4a', 'T4 - Driver Menu'),
    ScreenInfo('T4b', 'Wrong PIN', '/t4b', 'T4 - Driver Menu'),
    ScreenInfo('T4c', 'Driver Menu', '/t4c', 'T4 - Driver Menu'),
    ScreenInfo('T4d', 'Turn Display Off', '/t4d', 'T4 - Driver Menu'),
    ScreenInfo('T4e', 'Display Off', '/t4e', 'T4 - Driver Menu'),
  ];

  @override
  Widget build(BuildContext context) => TabletPageLayout(
        statusArea: const AppStatusIndicator(
          label: 'Foundation placeholder',
          color: AppColors.brandPurple,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: AppCard(
              padding: const EdgeInsets.all(AppSpacing.xxl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    screen.group.toUpperCase(),
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(color: AppColors.steel),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    screen.id,
                    style: Theme.of(
                      context,
                    )
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: AppColors.primary),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    screen.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  const Divider(),
                  const SizedBox(height: AppSpacing.md),
                  _Detail(label: 'Screen ID', value: screen.id),
                  _Detail(label: 'Screen title', value: screen.title),
                  _Detail(label: 'Route path', value: screen.path),
                ],
              ),
            ),
          ),
        ),
      );
}

class _Detail extends StatelessWidget {
  const _Detail({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
        child: Wrap(
          spacing: AppSpacing.md,
          runSpacing: AppSpacing.xxs,
          children: [
            SizedBox(
              width: 120,
              child: Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppColors.steel),
              ),
            ),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
}
