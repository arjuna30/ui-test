import 'package:flutter/material.dart';

class CustomPhotoCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String text;
  final double rating;
  final VoidCallback? onTap;

  const CustomPhotoCard(
      {Key? key,
      required this.image,
      required this.text,
      required this.rating,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 124,
              width: 124,
              decoration: BoxDecoration(
                  image: DecorationImage(image: image, fit: BoxFit.cover)),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 13,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF202237), Color(0xFF595FA0)],
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 9,
                            color: Color(0xFFDFB300),
                          ),
                          Text(
                            '$rating',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 4),
              alignment: Alignment.centerLeft,
              height: 20,
              width: 124,
              color: Colors.black.withAlpha(41),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
