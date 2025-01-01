import 'package:dart_exercice/pages/errors.dart';
import 'package:dart_exercice/pages/home.dart';
import 'package:dart_exercice/pages/members/all_members.dart';
import 'package:dart_exercice/pages/members/leaders.dart';
import 'package:dart_exercice/pages/members/learners.dart';
import 'package:dart_exercice/pages/members/other_members.dart';
import 'package:dart_exercice/routes/routes_name.dart';
import 'package:dart_exercice/routes/routes_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  static GoRouter get router => _router;
  static final _navigationKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: RoutesName.homePage);
  static final _shellNavigatorLeadersKey =
      GlobalKey<NavigatorState>(debugLabel: RoutesName.mentorPage);
  static final _shellNavigatorLearnersKey =
      GlobalKey<NavigatorState>(debugLabel: RoutesName.learnerPage);
  static final _shellNavigatorOthersKey =
      GlobalKey<NavigatorState>(debugLabel: RoutesName.othersPage);
  static final GoRouter _router = GoRouter(
    navigatorKey: _navigationKey,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => const ErrorPage(),
    initialLocation: RoutesPath.homePage,
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _navigationKey,
        builder: (context, state, navigationShell) => HomePage(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: RoutesPath.homePage,
                name: RoutesName.homePage,
                builder: (context, state) => AllMembers(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLeadersKey,
            routes: [
              GoRoute(
                path: RoutesPath.mentorPage,
                name: RoutesName.mentorPage,
                builder: (context, state) => Leaders(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLearnersKey,
            routes: [
              GoRoute(
                path: RoutesPath.learnerPage,
                name: RoutesName.learnerPage,
                builder: (context, state) => Learners(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorOthersKey,
            routes: [
              GoRoute(
                path: RoutesPath.othersPage,
                name: RoutesName.othersPage,
                builder: (context, state) => OtherMembers(),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
