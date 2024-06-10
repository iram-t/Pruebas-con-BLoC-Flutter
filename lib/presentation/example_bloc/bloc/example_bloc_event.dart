part of 'example_bloc_bloc.dart';

abstract class ExampleBlocEvent  extends Equatable {
  const ExampleBlocEvent();

  @override
  List<Object> get props => [];

}

class GetPokemonBlocEvent extends ExampleBlocEvent {
  final String name;
  const GetPokemonBlocEvent(this.name);
}
