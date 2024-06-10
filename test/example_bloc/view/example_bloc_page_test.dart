// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_cubit/presentation/example_bloc/example_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExampleBlocPage', () {
    group('route', () {
      test('is routable', () {
        expect(ExampleBlocPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders ExampleBlocView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ExampleBlocPage()));
      expect(find.byType(ExampleBlocView), findsOneWidget);
    });
  });
}
