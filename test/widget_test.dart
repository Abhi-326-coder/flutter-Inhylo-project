import 'package:flutter_test/flutter_test.dart';
import 'package:inhylo_tablet/app.dart';

void main() {
  testWidgets('INHYLO app opens the developer dashboard', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const InhyloApp());
    await tester.pumpAndSettle();

    expect(find.text('Developer dashboard'), findsOneWidget);
    expect(find.textContaining('/t1a'), findsOneWidget);
  });
}
