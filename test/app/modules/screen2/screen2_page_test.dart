import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/screen2/screen2_page.dart';

main() {
  testWidgets('Screen2Page has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(Screen2Page(title: 'Screen2')));
    final titleFinder = find.text('Screen2');
    expect(titleFinder, findsOneWidget);
  });
}
