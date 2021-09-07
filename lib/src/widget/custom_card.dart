import 'package:flutter/material.dart';
import 'package:test_ordo_ui/src/const.dart';

class CardBonus extends StatelessWidget {
  final String title;
  final String amount;
  const CardBonus({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      padding: EdgeInsets.symmetric(horizontal: 31),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(30),
                offset: Offset(0, 10),
                blurRadius: 40)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
                color: kOrange, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            'Rp $amount',
            style: TextStyle(
                color: Color(0xFF6D6D6D),
                fontSize: 22,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
