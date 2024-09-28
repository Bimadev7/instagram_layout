import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart'; // pastikan jalur impor benar

void main() {
  testWidgets('Instagram Home has bottom navigation and feed page',
      (WidgetTester tester) async {
    // Build the InstagramHome widget
    await tester.pumpWidget(MyApp());

    // Verify that the AppBar contains the title 'Instagram'
    expect(find.text('Instagram'), findsOneWidget);

    // Verify that the bottom navigation has 5 items
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.movie_filter), findsOneWidget);
    expect(find.byIcon(Icons.shopping_bag), findsOneWidget);
    expect(find.byIcon(Icons.account_circle), findsOneWidget);

    // Tap on the bottom navigation (home icon) and trigger frame
    await tester.tap(find.byIcon(Icons.home));
    await tester.pump();

    // Verify that the feed page is displayed
    expect(find.text('User 0'), findsOneWidget); // Check for user feed
  });
}
