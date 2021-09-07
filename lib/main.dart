import 'package:flutter/material.dart';
import 'package:test_ordo_ui/src/component/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
