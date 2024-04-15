import 'package:flutter/material.dart';
import 'package:subway_search/presentation/searchList_state.dart';


import '../data/repository/subway_repository.dart';

class SearchListViewModel with ChangeNotifier {
  final SubwayRepository _subwayRepository;

  SearchListViewModel({
    required SubwayRepository subwayRepository,
  }) : _subwayRepository = subwayRepository;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  Future<void> onSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = await state.copyWith(
      subways: await _subwayRepository.getSubways(query),
      isLoading: false,
    );
    notifyListeners();
  }
}
