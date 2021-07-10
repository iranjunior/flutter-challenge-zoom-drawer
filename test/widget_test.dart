import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zoom_drawer/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    
    await tester.pumpWidget(EntryApp());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pump();

    expect(find.text('Iran Junior'), findsOneWidget);
  });
}
