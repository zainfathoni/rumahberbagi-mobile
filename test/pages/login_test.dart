import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rumahberbagi_mobile/main.dart';

Widget createAppWidget() => const MyApp();

void main() {
  group('Login Screen Tests', () {
    testWidgets('Login successful', (WidgetTester tester) async {
      await tester.pumpWidget(createAppWidget());

      // Enter email and password text.
      await tester.enterText(find.bySemanticsLabel('Email'), 'me@zainf.dev');
      await tester.enterText(find.bySemanticsLabel('Password'), 'p4ssw0rd');
      await tester.tap(find.text('Submit'));
      await tester.pumpAndSettle();

      expect(find.text('This is Home'), findsOneWidget);
    });
  });
}
