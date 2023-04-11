import 'package:flutter/material.dart';

import 'package:hci/components/card_trend.dart';
import 'package:hci/components/recommended.dart';

import '../BookDetails/book_details.dart';

class TrendingBooks extends StatelessWidget {
  TrendingBooks({super.key});
  final List<RecBooks> books = [
    RecBooks(
        'assets/images/hussite1.jpg',
        'Tower of Fools',
        'Reinmar of Bielawa, sometimes known as Reynevan, is a doctor, a magician and, according to some, a charlatan. And when a thoughtless indiscretion finds him caught in the crosshairs of powerful noble family, he is forced to flee his home.',
        'Andrzej Sapkowski',
        '576',
        'Hussite Trilogy'),
    RecBooks(
        'assets/images/hussite2.jpg',
        'Warrios of God',
        'And then came Anno Domini 1427. Do you remember what happened? In the spring pope Martin V issued the Salvatoris omnium bull, in which he proclaimed the necessity of a crusade against Czech heretics...',
        'Andrzej Sapkowski',
        '432',
        'Hussite Trilogy'),
    RecBooks(
        'assets/images/hussite3.jpg',
        'Lux Perpetua',
        'Reynevan is still in trouble. All the time someone is trying to kill him or presents him with offers he cannot refuse. Secret agents stalk him as well as dark forces, which do not hide their diabolical nature...',
        'Andrzej Sapkowski',
        '432',
        'Hussite Trilogy'),
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
              pageCount: book.pageCount,
              series: book.series,
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookDetails(
                      image: book.image,
                      name: book.name,
                      author: book.author,
                      price: book.price,
                      pageCount: book.pageCount,
                      series: book.series,
                    ))),
          );
        },
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
