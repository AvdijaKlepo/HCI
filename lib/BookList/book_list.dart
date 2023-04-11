import 'package:flutter/material.dart';
import 'package:hci/BookDetails/book_details.dart';

import '../utils/style.dart';

String image = 'assets/images/darktower1.jpg';
String name = 'The Gunslinger';
String price =
    'In the first book of this series, Stephen King introduces readers to one of his most enigmatic heroes, Roland of Gilead, The Last Gunslinger';
String autor = 'Stephen King';
String pageCount = '231';
String series = 'The Dark Tower';
String Brating = '3,93';
String BnRating = '579,459';
String BnReviews = '22,869';

class BookList extends StatelessWidget {
  final String text;

  const BookList({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 75.0),
              child: Text(
                text,
                style: heading1,
              ),
            ),
            Divider(
              color: black,
              endIndent: 100,
              indent: 100,
              thickness: 1,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: black,
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/darktower1.jpg',
                            ),
                          )),
                      width: 170,
                      height: 250,
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookDetails(
                              image: image,
                              name: name,
                              author: autor,
                              price: price,
                              pageCount: pageCount,
                              series: series,
                              rating: Brating,
                              nRatings: BnRating,
                              nReviews: BnReviews,
                            ))),
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: black,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/darktower2.jpg'),
                        )),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: xsmall,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: black,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/darktower3.jpg'),
                        )),
                    width: 170,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: black,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/darktower4.jpg'),
                        )),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: xsmall,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: black,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/hussite1.jpg'),
                        )),
                    width: 170,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: black,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/hussite2.jpg'),
                        )),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
