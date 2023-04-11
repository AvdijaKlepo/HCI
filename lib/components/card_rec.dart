import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class RecommendedCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String author;
  final String pageCount;
  final String series;
  const RecommendedCard(
      {required this.image,
      required this.name,
      required this.price,
      required this.author,
      required this.pageCount,
      super.key,
      required this.series});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(26),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      width: 200,
      height: 250,
      margin: EdgeInsets.only(right: medium),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.75),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
        child: Padding(
          padding: EdgeInsets.only(
            left: small,
            bottom: medium,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 68,
                      height: 36,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: pBold,
                  ),
                  Text(
                    author,
                    style: pBold,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
