import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/model/subway.dart';

class ResultMain extends StatelessWidget {
  final List<Subway> subwayList;

  ResultMain({super.key, required this.subwayList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: subwayList.map((item) {
            return ListTile(
              title: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4.0, // 테두리 두께 설정
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('호선 : ${item.subwayLineName}'),
                      Text('상하행 : ${item.updnLine} '),
                      Text('도착지방면 : ${item.trainLineNm}'),
                      Text('지하철역명 : ${item.statnNm}'),
                      Text('도착 정보 생성시간 : ${item.recptnDt}'),
                      Text('첫번째 도착메세지 : ${item.arvlMsgArrival2}'),
                      Text('두번째 도착메세지 : ${item.arvlMsgArrival3}'),
                      Text('도착정보: ${item.arvlCd}'),

                    ]),
              ),
            );
          }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}