import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/app_theme.dart';

class RouteDashboard extends StatelessWidget {
  const RouteDashboard({super.key});
  static const groups =
      <({String title, List<({String label, String path})> pages})>[
    (
      title: 'T1 · Link this tablet',
      pages: [
        (label: 'T1a · Show QR', path: '/t1a'),
        (label: 'T1b · Linked', path: '/t1b'),
        (label: 'T1c · Already linked', path: '/t1c'),
      ],
    ),
    (
      title: 'T2 · Download ads',
      pages: [
        (label: 'T2a · New ads', path: '/t2a'),
        (label: 'T2b · Downloading', path: '/t2b'),
        (label: 'T2c · Done', path: '/t2c'),
        (label: 'T2d · Failed', path: '/t2d'),
        (label: 'T2e · No internet', path: '/t2e'),
      ],
    ),
    (
      title: 'T3 · Go active',
      pages: [
        (label: 'T3a · Checking', path: '/t3a'),
        (label: 'T3b · Ready', path: '/t3b'),
        (label: 'T3c · Cannot go active', path: '/t3c'),
      ],
    ),
    (
      title: 'T4 · Driver menu',
      pages: [
        (label: 'T4a · Enter PIN', path: '/t4a'),
        (label: 'T4b · Wrong PIN', path: '/t4b'),
        (label: 'T4c · Driver menu', path: '/t4c'),
        (label: 'T4d · Turn off?', path: '/t4d'),
        (label: 'T4e · Display off', path: '/t4e'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('INHYLO Tablet · Routes'),
          backgroundColor: AppColors.brandNavy,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                const Text(
                  'Developer route dashboard',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.brandNavy,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Tap any screen to preview it. These are demo routes.',
                  style: TextStyle(color: AppColors.muted),
                ),
                const SizedBox(height: 18),
                for (final group in groups)
                  Card(
                    margin: const EdgeInsets.only(bottom: 14),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            group.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              for (final page in group.pages)
                                OutlinedButton(
                                  onPressed: () => context.go(page.path),
                                  child: Text(page.label),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
}
