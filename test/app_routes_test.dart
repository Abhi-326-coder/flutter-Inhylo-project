import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inhylo_tablet/app.dart';
import 'package:inhylo_tablet/core/router/app_router.dart';
import 'package:inhylo_tablet/core/router/app_routes.dart';

void main() {
  testWidgets('dashboard opens and links to every screen route', (
    tester,
  ) async {
    await tester.pumpWidget(const InhyloApp());
    await tester.pumpAndSettle();
    expect(find.text('Developer dashboard'), findsOneWidget);

    for (final path in AppRoutes.all.skip(1)) {
      appRouter.go('/');
      await tester.pumpAndSettle();
      final routeButton = find.textContaining(path).last;
      await tester.ensureVisible(routeButton);
      await tester.tap(routeButton);
      await tester.pumpAndSettle();
      expect(appRouter.routeInformationProvider.value.uri.path, path);
      expect(find.byType(Scaffold), findsOneWidget, reason: path);
    }
  });
}
