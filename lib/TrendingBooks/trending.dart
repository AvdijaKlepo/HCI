import 'package:flutter/material.dart';

import 'package:hci/components/card_trend.dart';
import 'package:hci/components/recommended.dart';

import '../BookDetails/book_details.dart';

class TrendingBooks extends StatelessWidget {
  TrendingBooks({super.key});
  final List<RecBooks> books = [
    RecBooks('assets/images/hussite1.jpg', 'Tower of Fools', '30',
        'Andrzej Sapkowski'),
    RecBooks('assets/images/hussite2.jpg', 'Warrios of God', '30',
        'Andrzej Sapkowski'),
    RecBooks('assets/images/hussite3.jpg', 'Lux Perpetua', '30',
        'Andrzej Sapkowski'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          var book = books[index];
          return InkWell(
            child: TrendingCard(
              image: book.image,
              name: book.name,
              price: book.price,
              author: book.author,
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookDetails(
                      image: book.image,
                      name: book.name,
                      author: book.author,
                      price: book.price,
                    ))),
          );
        },
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
