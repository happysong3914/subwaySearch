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
  Future<List<Subway>> getPhotos(String query) async {
    final dto = await _subWayDataSource.getSubwayResult(query);

    if (dto.realtimeArrivalList == null) {
      return [];
    }

    return dto.realtimeArrivalList!.map((e) => e.toPhoto()).toList();
  }
}