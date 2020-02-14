import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/screen4/screen4_page.dart';

main() {
  testWidgets('Screen4Page has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(Screen4Page(title: 'Screen4')));
    final titleFinder = find.text('Screen4');
    expect(titleFinder, findsOneWidget);
  });
}
