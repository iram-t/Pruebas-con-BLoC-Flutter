// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_cubit/presentation/example_bloc/bloc/bloc.dart';

void main() {
  group('ExampleBlocBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          ExampleBlocBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final exampleBlocBloc = ExampleBlocBloc();
      expect(exampleBlocBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<ExampleBlocBloc, ExampleBlocState>(
      'CustomExampleBlocEvent emits nothing',
      build: ExampleBlocBloc.new,
      act: (bloc) => bloc.add(const CustomExampleBlocEvent()),
      expect: () => <ExampleBlocState>[],
    );
  });
}
