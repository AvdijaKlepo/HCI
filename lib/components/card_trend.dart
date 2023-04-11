import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class TrendingCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String author;
  final String pageCount;
  final String series;
  final String rating;
  final String nRatings;
  final String nReviews;
  const TrendingCard(
      {required this.image,
      required this.name,
      required this.price,
      required this.author,
      required this.pageCount,
      super.key,
      required this.series,
      required this.rating,
      required this.nRatings,
      required this.nReviews});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        width: 154,
        height: 230,
        margin: const EdgeInsets.only(right: 36),
        child: Row(
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill)),
                width: 170,
              ),
            ),
            SizedBox(
              width: xsmall,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: heading4,
                ),
                Text(
                  author,
                  style: heading4,
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(rating),
                  ],
                ),
                SizedBox(
                  height: xsmall,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.rate_review),
                        Text(
                          '$nRatings ocijena',
                          style: p4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: xsmall,
                    ),
                    Row(
                      children: [
                        Icon(Icons.reviews_rounded),
                        Text(
                          '$nReviews recenzija',
                          style: p4,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
