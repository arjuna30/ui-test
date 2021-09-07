import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo_ui/gen/fonts.gen.dart';
import 'package:test_ordo_ui/src/component/app_router.gr.dart';

class MenuPage extends StatelessWidget {
  static const route = AutoRoute(path: '/', page: MenuPage, initial: true);

  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BodyMenuPage(),
    );
  }
}

class _BodyMenuPage extends StatelessWidget {
  const _BodyMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Made by',
            style: TextStyle(fontFamily: FontFamily.poppins, fontSize: 18),
          ),
          Text(
            'Arjun Abdillah',
            style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 107,
          ),
          Container(
            height: 226,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _MainButton(
                  title: 'Test 1',
                  onPressed: () async {
                    await AutoRouter.of(context).push(TestOnePageRoute());
                  },
                ),
                _MainButton(
                  title: 'Test 2',
                  onPressed: () async {
                    await AutoRouter.of(context).push(TestTwoPageRoute());
                  },
                ),
                _MainButton(
                  title: 'Test 3',
                  onPressed: () async {
                    await AutoRouter.of(context).push(TestThreePageRoute());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class _MainButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const _MainButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      child: Container(
        alignment: Alignment.center,
        height: 58,
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      color: Colors.black,
      shape: StadiumBorder(),
      onPressed: onPressed ?? null,
    );
  }
}
