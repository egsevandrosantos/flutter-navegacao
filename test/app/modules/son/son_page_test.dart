import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/son/son_page.dart';

main() {
  testWidgets('SonPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SonPage(title: 'Son')));
    final titleFinder = find.text('Son');
    expect(titleFinder, findsOneWidget);
  });
}
