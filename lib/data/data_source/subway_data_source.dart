import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/subway_dto.dart';



class SubWayDataSource {
  final _baseUrl = 'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5';

  Future<SubwayDto> getSubwayResult(String query) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl/$query'));

    return SubwayDto.fromJson(jsonDecode(response.body));
  }
}