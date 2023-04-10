import 'dart:ui';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/Reading/read.dart';
import 'package:hci/utils/style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../E-Library/e_library.dart';
import '../Settings/settings.dart';
import '../Social/social.dart';

class BookDetails extends StatefulWidget {
  final String image;
  final String name;
  final String author;
  final String price;

  const BookDetails(
      {required this.image,
      required this.name,
      required this.author,
      required this.price,
      super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  var rating = 0.0;
  String? selectedValue;
  final List<String> items = ['Želim čitati', 'Trenutno čitam', 'Pročitano'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                hintText: 'Title, author or ISBN',
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
              'The Dark Tower',
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
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Text(' | 4.65'),
                  Text(' | 422,054 ratings'),
                  Text(' | 24,414 reviews')
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Read(image: widget.image))),
                child: Text('Dodaj u biblioteku'),
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            const Text('Ostavi recenziju'),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(
              height: medium,
            ),
            const Divider(
              thickness: 1,
            ),
            Text(
              'Opis knjige',
              style: heading4,
            ),
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Text(widget.price),
            ),
            const Divider(
              thickness: 1,
            ),
            const Text('Broj stranica'),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'RATING DETAILS',
                style: heading3,
              ),
            ),
            Divider(
              endIndent: 150,
              indent: 150,
              thickness: 1,
              color: black,
            ),
            const Text('Rating od do  |  Broj Ratinga'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.9,
                ),
                const Text('81%')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.5,
                ),
                const Text('51%')
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
                const Text('31%')
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
                  percent: 0.2,
                ),
                const Text('11%')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                const Icon(Icons.star_outline),
                LinearPercentIndicator(
                  width: 150,
                  percent: 0.1,
                ),
                const Text('11%')
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.brown,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage())),
                  icon: const Icon(Icons.home_rounded),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ELibrary())),
                  icon: const Icon(Icons.book_rounded),
                ),
                label: 'Library'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Social())),
                  icon: const Icon(Icons.people_outline),
                ),
                label: 'Social'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settings())),
                  icon: const Icon(Icons.settings_outlined),
                ),
                label: 'Settings'),
          ]),
    );
  }
}
