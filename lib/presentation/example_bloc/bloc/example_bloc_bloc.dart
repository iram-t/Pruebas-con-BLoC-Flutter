import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:prueba_cubit/data/models/pokemon_model.dart';
import 'package:prueba_cubit/domain/repository/poke_repository.dart';
part 'example_bloc_event.dart';
part 'example_bloc_state.dart';

class ExampleBlocBloc extends Bloc<ExampleBlocEvent, ExampleBlocState> {
  ExampleBlocBloc({required PokeRepository pokeRepository}) : _pokeRepository = pokeRepository ,super(ExampleBlocLoading()) {
    on<GetPokemonBlocEvent>(_onGetPokemonBlocEvent);
  }
  final PokeRepository _pokeRepository;


  FutureOr<void> _onGetPokemonBlocEvent(GetPokemonBlocEvent event, Emitter<ExampleBlocState> emit) async {
    try {
      final newName = event.name;
      emit(ExampleBlocLoading());
      final pokemon = await _pokeRepository.getPokemon();
      emit(ExampleBlocSuccess(pokemon));
    } catch (e) {
      emit(ExampleBlocError(e.toString()));
    }
  }
}
