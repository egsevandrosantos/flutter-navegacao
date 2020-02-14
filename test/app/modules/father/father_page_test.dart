import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/father/father_page.dart';

main() {
  testWidgets('FatherPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FatherPage(title: 'Father')));
    final titleFinder = find.text('Father');
    expect(titleFinder, findsOneWidget);
  });
}
