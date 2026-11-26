import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TabletHeader extends StatelessWidget {
  const TabletHeader({super.key, required this.status});
  final String status;

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.brandNavy,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        child: Row(
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'INHY',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                    ),
                  ),
                  TextSpan(
                    text: 'LO',
                    style: TextStyle(
                      color: AppColors.brandYellow,
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Flexible(
              child: Text(
                status,
                textAlign: TextAlign.end,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ],
        ),
      );
}
