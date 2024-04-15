abstract interface class SubwayRepository {
  Future<List<Subway>> getPhotos(String query);
}