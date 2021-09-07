import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ordo_ui/gen/assets.gen.dart';
import 'package:test_ordo_ui/src/widget/custom_photo_card.dart';

class TestTwoPage extends StatefulWidget {
  static const route = AutoRoute(path: '/test-2', page: TestTwoPage);

  const TestTwoPage({Key? key}) : super(key: key);

  @override
  _TestTwoPageState createState() => _TestTwoPageState();
}

class _TestTwoPageState extends State<TestTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Portfolio Vendor'.toUpperCase(),
            style: TextStyle(
              color: Color(0xFF202237),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () async {
                await AutoRouter.of(context).pop();
              },
              child: SvgPicture.asset(
                Assets.icons.back,
                height: 22,
                color: Color(0xFF202237),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF202237), Color(0xFF595FA0)])
                        .createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    Assets.icons.bell,
                  ),
                ),
              ),
            )
          ]),
      body: _BodyTestTwoPage(),
    );
  }
}

class _BodyTestTwoPage extends StatefulWidget {
  const _BodyTestTwoPage({Key? key}) : super(key: key);

  @override
  _BodyTestTwoPageState createState() => _BodyTestTwoPageState();
}

class _BodyTestTwoPageState extends State<_BodyTestTwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 96,
                  padding: EdgeInsets.all(4.5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFC7C7CC))),
                  child: Image(
                    image: AssetGenImage(Assets.images.photo2.path),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '5.0',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Rating',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Review',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '162',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Pesanan',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 9.0, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dina Florist',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Toko Bunga terbaik se Indonesia Raya\nHarga Murah Produk Berkualitas',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: Color(0xFF3C3C43).withAlpha(18))),
                child: Center(
                  child: Text(
                    'Portfolio'.toUpperCase(),
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: _images.length,
                itemBuilder: (context, index) => CustomPhotoCard(
                  image: _images[index],
                  text: 'Nama Customer',
                  rating: 5.0,
                  onTap: () {},
                ),
              ),
            ),
            BottomNavigationBar(
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: _bottomNavigationItems,
            ),
          ],
        ),
      ),
    );
  }

  final _bottomNavigationItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.book), label: 'book'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.swap), label: 'swap'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.download), label: 'download'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.chart), label: 'chart'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.helmet), label: 'helmet'),
  ];

  final _images = <AssetGenImage>[
    Assets.images.rectangle5,
    Assets.images.rectangle6,
    Assets.images.rectangle7,
    Assets.images.rectangle7,
    Assets.images.rectangle5,
    Assets.images.rectangle6,
    Assets.images.rectangle5,
    Assets.images.rectangle7,
    Assets.images.rectangle6,
    Assets.images.rectangle6,
    Assets.images.rectangle5,
    Assets.images.rectangle7
  ];
}
