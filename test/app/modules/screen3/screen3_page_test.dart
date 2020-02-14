import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/screen3/screen3_page.dart';

main() {
  testWidgets('Screen3Page has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(Screen3Page(title: 'Screen3')));
    final titleFinder = find.text('Screen3');
    expect(titleFinder, findsOneWidget);
  });
}
