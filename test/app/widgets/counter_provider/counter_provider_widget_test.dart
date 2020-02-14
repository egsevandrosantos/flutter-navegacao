import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:navegador/app/./widgets/counter_provider/counter_provider_widget.dart';

main() {
  testWidgets('CounterProviderWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CounterProviderInheritedWidget(0)));
    final textFinder = find.text('CounterProvider');
    expect(textFinder, findsOneWidget);
  });
}
