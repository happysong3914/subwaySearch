import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/data/model/subway.dart';
import 'package:subway_search/presentation/result_main.dart';
import 'package:subway_search/presentation/search_list_view_model.dart';
import 'package:subway_search/presentation/search_main.dart';

import 'data/data_source/subway_data_source.dart';
import 'data/repository/subway_repository_impl.dart';

final router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => SearchListViewModel(
              subwayRepository: SubwayRepositoryImpl(
                  subWayDataSource: SubWayDataSource()
              )
          ),
            child: const SearchMain(),
        );
      },
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        final List<Subway> resultList = state.extra as List<Subway>;
        return ResultMain(subwayList: resultList,);
      },
    ),
  ],
);
