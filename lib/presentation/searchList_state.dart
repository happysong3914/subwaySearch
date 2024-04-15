import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subway_search/data/model/subway.dart';

part 'searchList_state.freezed.dart';

part 'searchList_state.g.dart';

@freezed
class SearchListState with _$SearchListState {
  const factory SearchListState({
    @Default([]) List<Subway> photos,
    @Default(false) bool isLoading,
  }) = _SearchListState;
  
  factory SearchListState.fromJson(Map<String, Object?> json) => _$SearchListStateFromJson(json); 
}