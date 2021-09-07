import 'package:auto_route/annotations.dart';
import 'package:test_ordo_ui/src/page/menu_page.dart';
import 'package:test_ordo_ui/src/page/test_one/test_one_page.dart';
import 'package:test_ordo_ui/src/page/test_three/test_three_page.dart';
import 'package:test_ordo_ui/src/page/test_two/test_two_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  MenuPage.route,
  TestOnePage.route,
  TestTwoPage.route,
  TestThreePage.route,
])
class $AppRouter {}
