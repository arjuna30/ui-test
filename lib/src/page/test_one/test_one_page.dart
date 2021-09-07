import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ordo_ui/gen/assets.gen.dart';
import 'package:test_ordo_ui/src/const.dart';
import 'dart:math' as math;

import 'package:timeline_tile/timeline_tile.dart';

class TestOnePage extends StatelessWidget {
  static const route = AutoRoute(path: '/test-1', page: TestOnePage);

  const TestOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9F9),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () async {
              await AutoRouter.of(context).pop();
            },
            child: SvgPicture.asset(
              Assets.icons.back,
              height: 22,
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
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF3AB648), Color(0xFF526430)])
                      .createShader(bounds);
                },
                child: SvgPicture.asset(
                  Assets.icons.shopBag,
                ),
              ),
            ),
          )
        ],
        title: Text(
          'Lacak Pesanan'.toUpperCase(),
          style: TextStyle(
            color: Color(0xFF545454),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _BodyTestOnePage(),
    );
  }
}

class _BodyTestOnePage extends StatelessWidget {
  _BodyTestOnePage({Key? key}) : super(key: key);

  final lorem =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.map, fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
            child: Stack(alignment: Alignment.topCenter, children: [
              Image(
                image: Assets.images.tracking,
              ),
              DraggableScrollableSheet(
                  initialChildSize: 0.3,
                  maxChildSize: 0.7,
                  minChildSize: 0.3,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            controller: scrollController,
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 48),
                              child: Center(
                                child: Container(
                                  height: 4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  color: kTukode,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 11),
                              controller: scrollController,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 7),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomPaint(
                                            size: Size(40, 40),
                                            painter: _Circle(
                                                color: Color(0xFF487D39),
                                                sweepAngle: 235),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle),
                                            height: 30,
                                          ),
                                          Image(
                                            image: Assets.images.photo,
                                            height: 48,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'David Morel',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'B 1201 FA',
                                            style: TextStyle(
                                                color: Color(0xFF92D274),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 77,
                                      child: Image(
                                        image: Assets.images.chat,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: TimelineTile(
                                          indicatorStyle: IndicatorStyle(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 14),
                                              indicator: SvgPicture.asset(
                                                Assets.icons.clock,
                                              )),
                                          endChild: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Status',
                                                style: TextStyle(
                                                  color: kTukode,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                'Sedang mengambil barang',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                          isFirst: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: TimelineTile(
                                          indicatorStyle: IndicatorStyle(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 14),
                                              indicator: Container(
                                                height: 30,
                                                width: 30,
                                                child: SvgPicture.asset(
                                                  Assets.icons.pin,
                                                ),
                                              )),
                                          endChild: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Alamat Anda',
                                                style: TextStyle(
                                                  color: kTukode,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                'Taman Indah Dago No. 612',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                          isLast: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Pesanan',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                _CustomCard(
                                  image: Assets.images.strawberry,
                                  title: 'Strawberry',
                                  weight: 100,
                                  price: '75.000',
                                  item: 2,
                                  note: lorem,
                                ),
                                _CustomCard(
                                  image: Assets.images.strawberry,
                                  title: 'Nanas',
                                  weight: 100,
                                  price: '75.000',
                                  item: 2,
                                  note: lorem,
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Catatan Pesanan',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  lorem,
                                  style: TextStyle(
                                      color: Color(0xFF8A7F7F),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ]),
          ),
          BottomNavigationBar(
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: _bottomNavigationItems),
        ],
      ),
    ));
  }

  final _bottomNavigationItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.clipboard), label: 'clipboard'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.swap), label: 'swap'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.home), label: 'home'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.bellOutline), label: 'bell'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(Assets.icons.person), label: 'person'),
  ];
}

class _CustomCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final int? weight;
  final String? price;
  final int? item;
  final String? note;

  const _CustomCard({
    Key? key,
    required this.image,
    required this.title,
    this.weight,
    this.price,
    this.item,
    this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                height: 78,
                child: Image(
                  image: image,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      '$weight Gram',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFF979696)),
                    ),
                    Text(
                      'Rp $price',
                      style: TextStyle(
                          color: kTukode,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Text(
                '$item Item',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ))
            ],
          ),
          Text(
            'Catatan Item',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),
          Text(
            note ?? '',
            style: TextStyle(
                color: Color(0xFF8A7F7F),
                fontWeight: FontWeight.w400,
                fontSize: 10),
          ),
          Divider(height: 28),
        ],
      ),
    );
  }
}

class _Circle extends CustomPainter {
  final double? sweepAngle;
  final Color? color;
  _Circle({this.color, this.sweepAngle});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 7.0
      ..style = PaintingStyle.stroke
      ..color = color!;

    double degToRad(double deg) => deg * (math.pi / 180);

    final path = Path()
      ..arcTo(
          // 4.
          Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            height: size.height * 1.7,
            width: size.width * 1.7,
          ), // 5.
          degToRad(90), // 6.
          degToRad(sweepAngle!), // 7.
          false);

    canvas.drawPath(path, paint); // 8.
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
