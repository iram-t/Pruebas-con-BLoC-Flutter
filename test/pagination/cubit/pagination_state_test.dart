// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_cubit/presentation/pagination/cubit/cubit.dart';

void main() {
  group('PaginationState', () {
    test('supports value equality', () {
      expect(
        PaginationState(),
        equals(
          const PaginationState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const PaginationState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const paginationState = PaginationState(
            customProperty: 'My property',
          );
          expect(
            paginationState.copyWith(),
            equals(paginationState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const paginationState = PaginationState(
            customProperty: 'My property',
          );
          final otherPaginationState = PaginationState(
            customProperty: 'My property 2',
          );
          expect(paginationState, isNot(equals(otherPaginationState)));

          expect(
            paginationState.copyWith(
              customProperty: otherPaginationState.customProperty,
            ),
            equals(otherPaginationState),
          );
        },
      );
    });
  });
}
