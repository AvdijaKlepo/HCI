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
        'Stephen King',
        '224'),
    RecBooks(
        'assets/images/darktower2.jpg',
        'The Drawing of the Three',
        'While pursuing his quest for the Dark Tower through a world that is a nightmarishly distorted mirror image of our own, Roland, the last gunslinger, encounters three mysterious doorways on the beach. Each one enters into the life of a different person living in contemporary New York.',
        'Stephen King',
        '400'),
    RecBooks(
        'assets/images/darktower3.jpg',
        'The Wastelands',
        'Several months have passed, and Roland’s two new tet-mates have become proficient gunslingers. Eddie Dean has given up heroin, and Odetta’s two selves have joined, becoming the stronger and more balanced personality of Susannah Dean.',
        'Stephen King',
        '640'),
    RecBooks(
        'assets/images/darktower4.jpg',
        'Wizard and glass',
        'Roland, Eddie, Susannah, Jake, and Jake’s pet bumbler survive Blaine the Mono’s final crash, only to find themselves stranded in an alternate version of Topeka, Kansas, one that has been ravaged by the superflu virus. ',
        'Stephen King',
        '787')
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
                    pageCount: book.pageCount),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BookDetails(
                          image: book.image,
                          name: book.name,
                          author: book.author,
                          price: book.price,
                          pageCount: book.pageCount,
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
