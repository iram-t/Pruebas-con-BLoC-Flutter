// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_cubit/presentation/example_bloc/bloc/bloc.dart';

void main() {
  group('ExampleBlocState', () {
    test('supports value equality', () {
      expect(
        ExampleBlocState(),
        equals(
          const ExampleBlocState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const ExampleBlocState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const exampleBlocState = ExampleBlocState(
            customProperty: 'My property',
          );
          expect(
            exampleBlocState.copyWith(),
            equals(exampleBlocState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const exampleBlocState = ExampleBlocState(
            customProperty: 'My property',
          );
          final otherExampleBlocState = ExampleBlocState(
            customProperty: 'My property 2',
          );
          expect(exampleBlocState, isNot(equals(otherExampleBlocState)));

          expect(
            exampleBlocState.copyWith(
              customProperty: otherExampleBlocState.customProperty,
            ),
            equals(otherExampleBlocState),
          );
        },
      );
    });
  });
}
