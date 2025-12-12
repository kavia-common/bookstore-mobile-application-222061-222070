import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bookstore_frontend/main.dart';

void main() {
  testWidgets('Shows bottom navigation with Books and Transactions', (tester) async {
    await tester.pumpWidget(const BookstoreApp());
    expect(find.text('Books'), findsOneWidget);
    expect(find.byIcon(Icons.menu_book), findsWidgets);
    expect(find.byIcon(Icons.receipt_long), findsWidgets);
  });

  testWidgets('Books tab is visible and Transactions tab can be selected', (tester) async {
    await tester.pumpWidget(const BookstoreApp());
    // Starts on Books
    expect(find.text('Books'), findsOneWidget);

    // Tap Transactions
    await tester.tap(find.text('Transactions'));
    await tester.pumpAndSettle();

    expect(find.text('Transactions'), findsOneWidget);
  });
}
