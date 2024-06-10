import 'package:freezed_annotation/freezed_annotation.dart';

//dart run build_runner build

part 'poke_result_model.freezed.dart';
part 'poke_result_model.g.dart';

@freezed
class PokeResult with _$PokeResult {
    const factory PokeResult({
        required int count,
        required String next,
        required dynamic previous,
        required List<Result> results,
    }) = _PokeResult;

    factory PokeResult.fromJson(Map<String, dynamic> json) => _$PokeResultFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result({
        required String name,
        required String url,
    }) = _Result;
    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
