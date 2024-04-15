import 'package:go_router/go_router.dart';

import 'data/core/change_notifier_provider.dart';



final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          value: CounterViewModel(
            repository: CounterRepository(),
          ),
          child: const CounterScreen(),
        );
      },
    ),
    GoRoute(
      path: '/next',
      builder: (context, state) {
        return ChangeNotifierProvider(
          value: CounterViewModel(
            repository: CounterRepository(),
          ),
          child: const NextScreen(),
        );
      },
    ),
  ],
);
