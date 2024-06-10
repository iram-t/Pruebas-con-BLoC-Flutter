part of 'example_bloc_bloc.dart';

/// {@template example_bloc_state}
/// ExampleBlocState description
/// {@endtemplate}
class ExampleBlocState extends Equatable {
  /// {@macro example_bloc_state}
  const ExampleBlocState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current ExampleBlocState with property changes
  ExampleBlocState copyWith({
    String? customProperty,
  }) {
    return ExampleBlocState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template example_bloc_initial}
/// The initial state of ExampleBlocState
/// {@endtemplate}
class ExampleBlocInitial extends ExampleBlocState {
  /// {@macro example_bloc_initial}
  const ExampleBlocInitial() : super();
}
