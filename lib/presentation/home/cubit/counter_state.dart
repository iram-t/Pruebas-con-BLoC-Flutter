import 'package:equatable/equatable.dart';

import 'package:prueba_cubit/data/models/pokemon_model.dart';

// enum CounterStatus {
//   initial,
//   loading,
//   success,
//   error,
// }

// class HomeState extends Equatable {
//   final int counter;
//   final CounterStatus status;
//   final Pokemon? pokemon;
//   const HomeState({this.counter = 0, this.status = CounterStatus.initial, this.pokemon});

//   // Crea una instancia
//   HomeState copyWith({
//     int? counter,
//     CounterStatus? status,
//     Pokemon? pokemon,
//   }) {
//     return HomeState(
//       counter: counter ?? this.counter,
//       status: status ?? this.status,
//       pokemon: pokemon ?? this.pokemon,
//     );
//   }
  
//   @override

//   List<Object?> get props => [counter, status, pokemon];
// }

class HomeState extends Equatable {

  @override
  List<Object?> get props => [];
}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final Pokemon pokemon;

  HomeSuccess(this.pokemon);
  @override
  List<Object?> get props => [pokemon];

}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
  @override
  List<Object?> get props => [message];
}
