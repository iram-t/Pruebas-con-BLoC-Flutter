part of 'example_bloc_bloc.dart';

/// {@template example_bloc_state}
/// ExampleBlocState description
/// {@endtemplate}
class ExampleBlocState extends Equatable {
  @override
  List<Object?> get props => [];

}

class ExampleBlocInitial extends ExampleBlocState {}

class ExampleBlocLoading extends ExampleBlocState {}
class ExampleBlocSuccess extends ExampleBlocState {
  final Pokemon pokemon;
  ExampleBlocSuccess(this.pokemon);

  @override
  List<Object?> get props => [pokemon];
}
class ExampleBlocError extends ExampleBlocState {
  final String message;
  ExampleBlocError(this.message);

  @override
  List<Object?> get props => [message];

}
