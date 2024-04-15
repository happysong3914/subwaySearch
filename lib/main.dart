import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:subway_search/data/data_source/subway_data_source.dart';
import 'package:subway_search/presentation/search_list_view_model.dart';
import 'package:subway_search/presentation/search_main.dart';
import 'package:subway_search/router.dart';

import 'data/repository/subway_repository.dart';
import 'data/repository/subway_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
/*      home: ChangeNotifierProvider(   // cnp
        create: (_) => SearchListViewModel(
            subwayRepository: SubwayRepositoryImpl(
                subWayDataSource: SubWayDataSource()
            )
        ),
        child: const SearchMain(),
      ),*/
    );
  }
}

