// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:test_ordo_ui/src/page/menu_page.dart' as _i3;
import 'package:test_ordo_ui/src/page/test_one/test_one_page.dart' as _i4;
import 'package:test_ordo_ui/src/page/test_three/test_three_page.dart' as _i6;
import 'package:test_ordo_ui/src/page/test_two/test_two_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MenuPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MenuPage();
        }),
    TestOnePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.TestOnePage();
        }),
    TestTwoPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.TestTwoPage();
        }),
    TestThreePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.TestThreePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MenuPageRoute.name, path: '/'),
        _i1.RouteConfig(TestOnePageRoute.name, path: '/test-1'),
        _i1.RouteConfig(TestTwoPageRoute.name, path: '/test-2'),
        _i1.RouteConfig(TestThreePageRoute.name, path: '/test-3')
      ];
}

class MenuPageRoute extends _i1.PageRouteInfo {
  const MenuPageRoute() : super(name, path: '/');

  static const String name = 'MenuPageRoute';
}

class TestOnePageRoute extends _i1.PageRouteInfo {
  const TestOnePageRoute() : super(name, path: '/test-1');

  static const String name = 'TestOnePageRoute';
}

class TestTwoPageRoute extends _i1.PageRouteInfo {
  const TestTwoPageRoute() : super(name, path: '/test-2');

  static const String name = 'TestTwoPageRoute';
}

class TestThreePageRoute extends _i1.PageRouteInfo {
  const TestThreePageRoute() : super(name, path: '/test-3');

  static const String name = 'TestThreePageRoute';
}
