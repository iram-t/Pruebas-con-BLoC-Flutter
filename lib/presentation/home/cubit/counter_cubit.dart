import 'package:bloc/bloc.dart';
import 'package:prueba_cubit/domain/repository/poke_repository.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required PokeRepository pokeRepository}) : _pokeRepository = pokeRepository, super(HomeLoading());

  final PokeRepository _pokeRepository;


  Future<void> fakeGetData() async {
    try {
      emit(HomeLoading());
      //  async
      final pokemon = await _pokeRepository.getPokemon();
      emit(HomeSuccess(pokemon));
      
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}