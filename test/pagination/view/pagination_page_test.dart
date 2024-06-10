// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_cubit/presentation/pagination/pagination.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaginationPage', () {
    group('route', () {
      test('is routable', () {
        expect(PaginationPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders PaginationView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: PaginationPage()));
      expect(find.byType(PaginationView), findsOneWidget);
    });
  });
}
