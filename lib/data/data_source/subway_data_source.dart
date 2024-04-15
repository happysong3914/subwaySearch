import 'dart:convert';

import 'package:http/http.dart' as http;



class SubWayDataSource {
  final _baseUrl = 'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8';

  Future<T> getSubwayResult(String query) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo'));

    //return PhotoResultDto.fromJson(jsonDecode(response.body));
  }
}