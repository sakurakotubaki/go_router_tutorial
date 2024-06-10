import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/screen/detail_screen.dart';
import 'package:go_router_tutorial/screen/home_screen.dart';

/// [別ファイルに定義するときは、変数はプライベートにしない]
/// [_をつけない!, 変数名は、routerにする。]
final GoRouter router = GoRouter(
  initialLocation: '/', // 最初に表示する画面のパス
  debugLogDiagnostics: true, // どのパスを通っているかを表示するログ
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);
