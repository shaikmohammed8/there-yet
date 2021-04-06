// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thereyet/screens/authscreens/login_container.dart';
import 'package:thereyet/screens/authscreens/loginscreen.dart';
import 'package:thereyet/screens/authscreens/signup_container.dart';

void main() {
  Widget makeTestWidget(Widget child) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('notthing', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    await tester.pumpWidget(makeTestWidget(LoginScreen()));
    var login=find.byType(CupertinoButton);
    expect(login, findsOneWidget);
  });
}
