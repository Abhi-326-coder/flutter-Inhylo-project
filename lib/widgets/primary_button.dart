import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.secondary = false,
    this.danger = false,
  });
  final String label;
  final VoidCallback? onPressed;
  final bool secondary;
  final bool danger;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: danger
                ? AppColors.semanticError
                : secondary
                    ? Colors.transparent
                    : AppColors.primary,
            foregroundColor:
                danger || !secondary ? Colors.white : AppColors.ink,
            side: secondary
                ? const BorderSide(color: AppColors.hairlineStrong, width: 1)
                : BorderSide.none,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: Text(label),
        ),
      );
}
