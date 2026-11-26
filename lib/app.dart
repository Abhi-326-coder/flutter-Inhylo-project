import 'package:flutter/material.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

class InhyloApp extends StatelessWidget {
  const InhyloApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'INHYLO Tablet',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        routerConfig: appRouter,
      );
}
