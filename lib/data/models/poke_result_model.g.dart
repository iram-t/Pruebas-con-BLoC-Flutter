// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeResultImpl _$$PokeResultImplFromJson(Map<String, dynamic> json) =>
    _$PokeResultImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokeResultImplToJson(_$PokeResultImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
