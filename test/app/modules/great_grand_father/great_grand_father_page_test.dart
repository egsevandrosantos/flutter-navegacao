import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./modules/great_grand_father/great_grand_father_page.dart';

main() {
  testWidgets('GreatGrandFatherPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(GreatGrandFatherPage(title: 'GreatGrandFather')));
    final titleFinder = find.text('GreatGrandFather');
    expect(titleFinder, findsOneWidget);
  });
}
