import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../shared/layouts/tablet_page_layout.dart';
import '../shared/widgets/app_card.dart';
import '../shared/widgets/app_status_indicator.dart';
import 'primary_button.dart';

/// Shared INHYLO tablet screen content. Screen-specific copy and special
/// widgets are supplied by the small route widgets in `lib/screens/`.
class DriverPage extends StatelessWidget {
  const DriverPage({
    super.key,
    required this.route,
    required this.title,
    required this.status,
    this.message,
    this.action,
    this.secondaryAction,
    this.success = false,
    this.error = false,
    this.qr = false,
    this.progress = false,
    this.checklist,
    this.pinEntry = false,
    this.wrongPin = false,
    this.menuItems = const [],
    this.smallMessage,
  });

  final String route;
  final String title;
  final String status;
  final String? message;
  final String? action;
  final String? secondaryAction;
  final bool success;
  final bool error;
  final bool qr;
  final bool progress;
  final List<CheckItem>? checklist;
  final bool pinEntry;
  final bool wrongPin;
  final List<MenuItem> menuItems;
  final String? smallMessage;

  void _navigate(BuildContext context, String label) {
    const paths = {
      'Continue': '/t2a',
      'Download ads': '/t2b',
      'Try again': '/t2b',
      'Go active': '/t3a',
      'Start now': '/t4c',
      'Check again': '/t3a',
      'Show QR again': '/t1a',
      'Back to ads': '/t2a',
      'Stop active mode': '/t2a',
      'Turn display off': '/t4d',
      'Turn off': '/t4e',
      'Cancel': '/t4c',
      'Turn display on': '/t4a',
    };
    final path = paths[label];
    if (path != null) context.go(path);
  }

  @override
  Widget build(BuildContext context) => TabletPageLayout(
        backgroundColor: AppColors.brandNavyDeep,
        maxContentWidth: 1000,
        contentPadding: const EdgeInsets.all(AppSpacing.md),
        statusArea: AppStatusIndicator(
          label: status,
          color: status.startsWith('Offline') || status.startsWith('Not linked')
              ? AppColors.semanticWarning
              : AppColors.semanticSuccess,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: AppCard(
              padding: const EdgeInsets.all(AppSpacing.xxl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (success || error) ...[
                    _StatusMark(success: success),
                    const SizedBox(height: AppSpacing.md),
                  ],
                  Text(title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall),
                  if (message != null) ...[
                    const SizedBox(height: AppSpacing.sm),
                    Text(message!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: AppColors.slate)),
                  ],
                  if (qr) ...[
                    const SizedBox(height: AppSpacing.xl),
                    const QrCodePlaceholder(),
                    const SizedBox(height: AppSpacing.sm),
                    Text('Tablet ID TAB-0142',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.steel)),
                  ],
                  if (progress) ...[
                    const SizedBox(height: AppSpacing.xl),
                    const LinearProgressIndicator(
                        value: .45,
                        minHeight: 8,
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppRadius.full))),
                    const SizedBox(height: AppSpacing.md),
                    Text('2 of 3 ads · 14 MB of 30 MB',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: AppSpacing.sm),
                    Text(smallMessage!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.steel)),
                  ],
                  if (checklist != null) ...[
                    const SizedBox(height: AppSpacing.lg),
                    for (final item in checklist!) _ChecklistRow(item: item),
                  ],
                  if (smallMessage != null && !progress) ...[
                    const SizedBox(height: AppSpacing.md),
                    Text(smallMessage!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.steel)),
                  ],
                  if (pinEntry) ...[
                    const SizedBox(height: AppSpacing.lg),
                    PinKeypad(wrongPin: wrongPin),
                  ],
                  if (menuItems.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.xl),
                    for (final item in menuItems) ...[
                      PrimaryButton(
                          label: item.label,
                          danger: item.destructive,
                          secondary: item.secondary,
                          onPressed: () => _navigate(context, item.label)),
                      if (item != menuItems.last)
                        const SizedBox(height: AppSpacing.sm),
                    ],
                  ],
                  if (action != null || secondaryAction != null) ...[
                    const SizedBox(height: AppSpacing.xl),
                    if (action != null)
                      PrimaryButton(
                          label: action!,
                          danger: action == 'Turn off',
                          onPressed: action == 'Call support'
                              ? null
                              : () => _navigate(context, action!)),
                    if (secondaryAction != null) ...[
                      const SizedBox(height: AppSpacing.sm),
                      PrimaryButton(
                          label: secondaryAction!,
                          secondary: true,
                          onPressed: () =>
                              _navigate(context, secondaryAction!)),
                    ],
                  ],
                ],
              ),
            ),
          ),
        ),
      );
}

class CheckItem {
  const CheckItem(this.label, this.value,
      {this.good = true, this.pending = false});
  final String label;
  final String value;
  final bool good;
  final bool pending;
}

class MenuItem {
  const MenuItem(this.label,
      {this.secondary = false, this.destructive = false});
  final String label;
  final bool secondary;
  final bool destructive;
}

class _ChecklistRow extends StatelessWidget {
  const _ChecklistRow({required this.item});
  final CheckItem item;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
        child: Row(children: [
          Expanded(
              child: Text(item.label,
                  style: Theme.of(context).textTheme.bodyLarge)),
          const SizedBox(width: AppSpacing.sm),
          Flexible(
              child: Text(item.value,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: item.pending
                          ? AppColors.semanticWarning
                          : item.good
                              ? AppColors.semanticSuccess
                              : AppColors.semanticError,
                      fontWeight: FontWeight.w600))),
        ]),
      );
}

class _StatusMark extends StatelessWidget {
  const _StatusMark({required this.success});
  final bool success;
  @override
  Widget build(BuildContext context) => Center(
        child: Semantics(
            label: success ? 'Success' : 'Error',
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: success
                      ? AppColors.cardTintMint
                      : const Color(0xFFFDEAEA)),
              alignment: Alignment.center,
              child: Icon(success ? Icons.check : Icons.priority_high,
                  color: success
                      ? AppColors.semanticSuccess
                      : AppColors.semanticError,
                  size: 34),
            )),
      );
}

/// Intentionally decorative: no registration payload is available yet.
class QrCodePlaceholder extends StatelessWidget {
  const QrCodePlaceholder({super.key});
  @override
  Widget build(BuildContext context) => Semantics(
        image: true,
        label: 'QR code',
        child: Container(
          width: 188,
          height: 188,
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.hairline),
              borderRadius: BorderRadius.circular(AppRadius.md)),
          child: CustomPaint(painter: _QrPlaceholderPainter()),
        ),
      );
}

class _QrPlaceholderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppColors.brandNavy;
    const cells = 25;
    final cell = size.width / cells;
    for (var y = 0; y < cells; y++) {
      for (var x = 0; x < cells; x++) {
        final finder =
            (x < 7 && y < 7) || (x > 17 && y < 7) || (x < 7 && y > 17);
        final filled = finder
            ? ((x % 6 == 0 || y % 6 == 0) ||
                (x % 6 > 1 && x % 6 < 5 && y % 6 > 1 && y % 6 < 5))
            : ((x * 7 + y * 11 + x * y) % 3 == 0);
        if (filled)
          canvas.drawRect(Rect.fromLTWH(x * cell, y * cell, cell, cell), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class PinKeypad extends StatefulWidget {
  const PinKeypad({super.key, this.wrongPin = false});
  final bool wrongPin;
  @override
  State<PinKeypad> createState() => _PinKeypadState();
}

class _PinKeypadState extends State<PinKeypad> {
  String _pin = '';
  void _press(String key) => setState(() {
        if (key == '⌫') {
          if (_pin.isNotEmpty) _pin = _pin.substring(0, _pin.length - 1);
        } else if (_pin.length < 4 && key.isNotEmpty) {
          _pin += key;
        }
      });

  @override
  Widget build(BuildContext context) => Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                4,
                (index) => Container(
                      width: 14,
                      height: 14,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index < _pin.length
                              ? (widget.wrongPin
                                  ? AppColors.semanticError
                                  : AppColors.primary)
                              : AppColors.hairline,
                          border: Border.all(
                              color: widget.wrongPin
                                  ? AppColors.semanticError
                                  : AppColors.hairlineStrong)),
                    ))),
        if (widget.wrongPin) ...[
          const SizedBox(height: AppSpacing.md),
          Semantics(
              liveRegion: true,
              child: Text('Wrong PIN. 2 tries left.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.semanticError,
                      fontWeight: FontWeight.w600))),
        ],
        const SizedBox(height: AppSpacing.lg),
        LayoutBuilder(builder: (context, constraints) {
          final gap = AppSpacing.xs;
          final cell = (constraints.maxWidth - gap * 2) / 3;
          const keys = [
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
            '8',
            '9',
            '',
            '0',
            '⌫'
          ];
          return Wrap(spacing: gap, runSpacing: gap, children: [
            for (final key in keys)
              SizedBox(
                width: cell,
                height: 52,
                child: key.isEmpty
                    ? const SizedBox.shrink()
                    : OutlinedButton(
                        onPressed: () => _press(key),
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            side: const BorderSide(color: AppColors.hairline),
                            backgroundColor: AppColors.surfaceSoft),
                        child: Text(key,
                            style: Theme.of(context).textTheme.titleLarge),
                      ),
              )
          ]);
        }),
      ]);
}
