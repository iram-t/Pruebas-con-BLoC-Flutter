// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_cubit/presentation/pagination/cubit/cubit.dart';

void main() {
  group('PaginationCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          PaginationCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final paginationCubit = PaginationCubit();
      expect(paginationCubit.state.customProperty, equals('Default Value'));
    });

    blocTest<PaginationCubit, PaginationState>(
      'yourCustomFunction emits nothing',
      build: PaginationCubit.new,
      act: (cubit) => cubit.yourCustomFunction(),
      expect: () => <PaginationState>[],
    );
  });
}
