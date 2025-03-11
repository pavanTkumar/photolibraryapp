import 'package:fishpond/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fishpond/main.dart';

void main() {
  testWidgets('App renders successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FishpondApp());

    // Verify that the app initializes without errors
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}