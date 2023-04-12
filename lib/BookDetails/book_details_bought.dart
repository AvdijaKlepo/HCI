import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../Basket/basket.dart';
import '../E-Library/e_library.dart';
import '../HomePage/homepage.dart';
import '../Reading/read.dart';
import '../Settings/settings.dart';
import '../Social/social.dart';
import '../utils/style.dart';
import 'book_sample.dart';

class BookDetailsBought extends StatefulWidget {
  final String image;
  final String name;
  final String author;
  final String price;
  final String pageCount;
  final String series;
  final String rating;
  final String nRatings;
  final String nReviews;
  const BookDetailsBought(
      {super.key,
      required this.image,
      required this.name,
      required this.author,
      required this.price,
      required this.pageCount,
      required this.series,
      required this.rating,
      required this.nRatings,
      required this.nReviews});

  @override
  State<BookDetailsBought> createState() => _BookDetailsBoughtState();
}

class _BookDetailsBoughtState extends State<BookDetailsBought> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.orange[100],
        title: SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Naslov, autor ili ISBN',
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Center(
                    child: Container(
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 150,
                      height: 250,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                widget.name,
                style: heading1,
              ),
            ),
            Text(
              widget.series,
              style: heading3,
            ),
            Text(
              widget.author,
              style: heading4,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: Row(
                children: [
                  const Icon(Icons.star),
                  const Icon(Icons.star),
                  const Icon(Icons.star),
                  const Icon(Icons.star),
                  const Icon(Icons.star),
                  Text(
                    ' | ${widget.rating}',
                    style: p2,
                  ),
                  Text(
                    ' | ${widget.nRatings}',
                    style: p2,
                  ),
                  Text(
                    ' | ${widget.nReviews}',
                    style: p2,
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 115,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                    ),
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Read(
                                  image: widget.image,
                                  text: 'Pročitano',
                                ))),
                    child: Text('Dodaj', style: p3),
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                SizedBox(
                  width: 115,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                    ),
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Basket(
                                  author: widget.author,
                                  image: widget.image,
                                  name: widget.name,
                                  pageCount: widget.pageCount,
                                  price: widget.price,
                                  series: widget.series,
                                  rating: widget.rating,
                                  nRating: widget.nRatings,
                                  nReviews: widget.nReviews,
                                ))),
                    child: Text(
                      'Kupi knjigu',
                      style: p3,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 115,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const BookSample())),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: Text(
                      'Čitaj uzorak',
                      style: p3,
                    ),
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                SizedBox(
                  width: 115,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const BookSample())),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: Text(
                      'Čitaj knjigu',
                      style: p3,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: xsmall,
            ),
            Text(
              'Broj stranica: ',
              style: p2,
            ),
            Text(
              widget.pageCount,
              style: p2,
            ),
            SizedBox(
              height: xsmall,
            ),
            const Divider(
              thickness: 1,
            ),
            Text(
              'Opis knjige',
              style: p2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Text(
                widget.price,
                style: p2,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ostavi recenziju',
                  style: p2,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'RECENZIJE',
                style: heading1,
              ),
            ),
            Divider(
              endIndent: 150,
              indent: 150,
              thickness: 1,
              color: black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.3,
                ),
                Text(
                  '20%',
                  style: p2,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.3,
                ),
                Text(
                  '20%',
                  style: p2,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.3,
                ),
                Text(
                  '20%',
                  style: p2,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.3,
                ),
                Text(
                  '20%',
                  style: p2,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.3,
                ),
                Text(
                  '20%',
                  style: p2,
                ),
              ],
            ),
            SizedBox(
              height: medium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: p2,
          selectedLabelStyle: p2,
          currentIndex: 1,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                    icon: const Icon(Icons.home_rounded),
                  ),
                ),
                label: 'Naslovna'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ELibrary())),
                    icon: const Icon(Icons.menu_book_outlined),
                  ),
                ),
                label: 'E-Bibloteka'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Social())),
                    icon: const Icon(Icons.people_outline),
                  ),
                ),
                label: 'Mreža'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Settings())),
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ),
                label: 'Postavke'),
          ]),
    );
  }
}
