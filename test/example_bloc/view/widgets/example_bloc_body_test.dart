// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba_cubit/presentation/example_bloc/example_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExampleBlocBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => ExampleBlocBloc(),
          child: MaterialApp(home: ExampleBlocBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
