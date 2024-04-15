import '../model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getSubways(String query);
}