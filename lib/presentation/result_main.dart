import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/model/subway.dart';

class ResultMain extends StatelessWidget {
  final List<Subway> subwayList;
  ResultMain({super.key, required this.subwayList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('''${subwayList.toString()}'''.trim()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },

        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
