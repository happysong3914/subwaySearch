import 'package:subway_search/data/mapper/subway_mapper.dart';

import '../data_source/subway_data_source.dart';

import '../dto/subway_dto.dart';
import '../model/subway.dart';
import 'subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubWayDataSource _subWayDataSource;

  const SubwayRepositoryImpl({
    required SubWayDataSource subWayDataSource,
  }) : _subWayDataSource = subWayDataSource;

  @override
  Future<List<Subway>> getSubways(String query) async {
    final dto = await _subWayDataSource.getSubwayResult(query);

    if (dto.realtimeArrivalList == null) {
      return [];
    }
    final test = dto.realtimeArrivalList!.map((e) => e.toSubway()).toList();
    return dto.realtimeArrivalList!.map((e) => e.toSubway()).toList();
  }
}