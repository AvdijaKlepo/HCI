import 'package:flutter/material.dart';
import 'package:hci/BookDetails/book_details.dart';
import 'package:hci/components/recommended.dart';

import '../components/card_rec.dart';

class RecommendedBooks extends StatelessWidget {
  RecommendedBooks({super.key});

  final List<RecBooks> books = [
    RecBooks(
        'assets/images/darktower1.jpg',
        'The Gunslinger',
        'In the first book of this series, Stephen King introduces readers to one of his most enigmatic heroes, Roland of Gilead, The Last Gunslinger.',
        'Stephen King'),
    RecBooks('assets/images/darktower2.jpg', 'The Drawing of the Three', '30',
        'Stephen King'),
    RecBooks(
        'assets/images/darktower3.jpg', 'The Wastelands', '30', 'Stephen King'),
    RecBooks('assets/images/darktower4.jpg', 'Wizard and glass', '40',
        'Stephen King')
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        child: InkWell(
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              var book = books[index];
              return InkWell(
                child: RecommendedCard(
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
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
