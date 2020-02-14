import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/grand_father/grand_father_page.dart';

main() {
  testWidgets('GrandFatherPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(GrandFatherPage(title: 'GrandFather')));
    final titleFinder = find.text('GrandFather');
    expect(titleFinder, findsOneWidget);
  });
}
