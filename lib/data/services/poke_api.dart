import 'package:dio/dio.dart';
import 'package:prueba_cubit/data/models/pokemon_model.dart';

class PokeApi {
  final Dio dio = Dio();
  final String api = "https://pokeapi.co/api/v2/";
  final String dittoEndpoint = 'pokemon/ditto';
  Future<Pokemon> getPokemon() async {
    try {
      final response = await dio.get('$api$dittoEndpoint');
      return Pokemon.fromJson(response.data);
    } catch (e) {
      throw Exception('Get Pokemon Error');
    }
  }
}