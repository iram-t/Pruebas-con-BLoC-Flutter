import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:prueba_cubit/data/models/poke_result_model.dart';
import 'package:prueba_cubit/domain/repository/poke_repository.dart';
part 'pagination_state.dart';

// Logica de negocio

class PaginationCubit extends Cubit<PaginationState> {
  PaginationCubit({required PokeRepository pokeRepository}) : _pokeRepository = pokeRepository,super(const PaginationInitial());

  final PokeRepository _pokeRepository;

  /// A description for yourCustomFunction 
  FutureOr<void> getPokemonNames() async {
    if (state.status == PaginationStatus.complete) {
      return;
    } 
    if (state.status == PaginationStatus.loading) return;
    if (state.status != PaginationStatus.initial) {
      emit(state.copyWith(status: PaginationStatus.loading));
    }
    try {
      final pokeResult = await _pokeRepository.getPokemonList(offset: state.pokeNames.length);
      if (pokeResult.results.isEmpty) {
        emit(state.copyWith(status: PaginationStatus.complete));
        return;
      } 
      emit(state.copyWith(status: PaginationStatus.loaded, pokeNames: [...state.pokeNames, ...pokeResult.results]));
    } catch (e) {
      if (state.status == PaginationStatus.loading) {
        emit(state.copyWith(status: PaginationStatus.loadingMoreError));
      }
      emit(state.copyWith(status: PaginationStatus.error));
    }
  }
}
