import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../widgets/app_header.dart';

/// Shared responsive page frame for future tablet screens.
class TabletPageLayout extends StatelessWidget {
  const TabletPageLayout({
    super.key,
    required this.child,
    this.header,
    this.statusArea,
    this.footer,
    this.maxContentWidth = 1120,
    this.contentPadding,
    this.backgroundColor = AppColors.surfaceSoft,
  });

  final Widget child;
  final Widget? header;
  final Widget? statusArea;
  final Widget? footer;
  final double maxContentWidth;
  final EdgeInsetsGeometry? contentPadding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              header ?? AppHeader(statusArea: statusArea),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      padding: contentPadding ??
                          EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth < 480
                                ? AppSpacing.md
                                : AppSpacing.xl,
                            vertical: AppSpacing.lg,
                          ),
                      child: Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: maxContentWidth,
                            minWidth: 0,
                          ),
                          child: child,
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (footer != null) footer!,
            ],
          ),
        ),
      );
}
