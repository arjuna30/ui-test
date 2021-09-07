import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ordo_ui/gen/assets.gen.dart';
import 'package:test_ordo_ui/src/const.dart';
import 'package:test_ordo_ui/src/widget/custom_card.dart';

class TestThreePage extends StatefulWidget {
  static const route = AutoRoute(path: '/test-3', page: TestThreePage);

  const TestThreePage({Key? key}) : super(key: key);

  @override
  _TestThreePageState createState() => _TestThreePageState();
}

class _TestThreePageState extends State<TestThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Finansial'.toUpperCase(),
            style: TextStyle(
              color: Color(0xFF545454),
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
                color: kOrange,
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
                            colors: [Color(0xFF53B2FC), Color(0xFF096BB7)])
                        .createShader(bounds);
                  },
                  child: SvgPicture.asset(
                    Assets.icons.chart,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Center(
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF53B2FC),
                                Color(0xFF127CCE)
                              ]).createShader(bounds);
                        },
                        child: SvgPicture.asset(
                          Assets.icons.notification,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(2),
                      height: 16,
                      width: 17,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kOrange)),
                    ),
                  ],
                ),
              ),
            ),
          ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 65.0, right: 23, left: 23),
        child: GestureDetector(
          onTap: () {},
          child: Stack(alignment: Alignment.centerRight, children: [
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF53B2FC), Color(0xFF127CCE)])),
              child: Center(
                  child: Text(
                'Complain',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _BodyTestThreePage(),
    );
  }
}

class _BodyTestThreePage extends StatefulWidget {
  const _BodyTestThreePage({Key? key}) : super(key: key);

  @override
  _BodyTestThreePageState createState() => _BodyTestThreePageState();
}

class _BodyTestThreePageState extends State<_BodyTestThreePage> {
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: FadingEdgeScrollView.fromScrollView(
              child: ListView(
                controller: _controller,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                children: [
                  CardBonus(
                    title: 'Total Bonus',
                    amount: '5.000.000,00',
                  ),
                  SizedBox(height: 15),
                  CardBonus(
                    title: 'Pending Bonus',
                    amount: '50.000,00',
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    height: 356,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Text(
                                'Daftar Rebate',
                                style: TextStyle(
                                    color: kDisabledText,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                              Spacer(),
                              Container(
                                width: 77.25,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: kOrange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: Center(
                                    child: Text(
                                  'Semua',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 77.25,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: kBlue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Filter',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    SvgPicture.asset(Assets.icons.options)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Table(
                            columnWidths: <int, TableColumnWidth>{
                              0: FlexColumnWidth(2.5),
                              1: FlexColumnWidth(2),
                              2: FlexColumnWidth(1.3),
                            },
                            children: _tanggal
                                .map(
                                  (value) => _tableRow(value),
                                )
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    padding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Riwayat Rebate',
                          style: TextStyle(
                              color: kOrange,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: _tanggal
                              .map((value) => Container(
                                    height: 71,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFF53B2FC),
                                                    Color(0xFF127CCE)
                                                  ])),
                                          padding: EdgeInsets.all(10),
                                          height: 33,
                                          width: 33,
                                          child: SvgPicture.asset(
                                              Assets.icons.rebate),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '#REBATEC12021',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 85,
                                          height: 26,
                                          decoration: BoxDecoration(
                                              color: kOrange,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(17))),
                                          child: Center(
                                            child: Text(
                                              'Rp 150.000',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  )
                ],
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
    );
  }
}

final _bottomNavigationItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.icons.home), label: 'home'),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.icons.notepad), label: 'note'),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.icons.rollback), label: 'history'),
];

final _tanggal = <String>[
  '14 Jul 2021',
  '15 Jul 2021',
  '15 Jul 2021',
  '17 Jul 2021',
  '17 Jul 2021',
  '18 Jul 2021',
];

TableRow _tableRow(String tanggal) => TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID Transaksi',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: kDisabledText),
              ),
              Text(
                '#EC1201211',
                style: TextStyle(
                    color: Color(0xFF3D6670),
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rebate',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: kDisabledText),
            ),
            Text(
              'Rp 150.000',
              style: TextStyle(
                  color: kIncomeColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: kDisabledText),
            ),
            Text(
              tanggal,
              style: TextStyle(
                  color: kIncomeColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ],
    );
