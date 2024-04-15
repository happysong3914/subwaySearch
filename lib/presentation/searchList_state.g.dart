// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchList_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchListStateImpl _$$SearchListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchListStateImpl(
      subways: (json['subways'] as List<dynamic>?)
              ?.map((e) => Subway.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SearchListStateImplToJson(
        _$SearchListStateImpl instance) =>
    <String, dynamic>{
      'subways': instance.subways,
      'isLoading': instance.isLoading,
    };
