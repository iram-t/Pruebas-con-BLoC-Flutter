part of 'example_bloc_bloc.dart';

abstract class ExampleBlocEvent  extends Equatable {
  const ExampleBlocEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_example_bloc_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomExampleBlocEvent extends ExampleBlocEvent {
  /// {@macro custom_example_bloc_event}
  const CustomExampleBlocEvent();
}
