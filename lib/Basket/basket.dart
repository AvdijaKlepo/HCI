import 'package:flutter/material.dart';
import 'package:hci/Basket2/basket2.dart';
import 'package:hci/utils/style.dart';

class Basket extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String author;
  final String pageCount;
  final String series;
  final String rating;
  final String nRating;
  const Basket(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.author,
      required this.pageCount,
      required this.series,
      required this.rating,
      required this.nRating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text('Košara'),
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$name - $series',
              style: heading3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              author,
              style: heading4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Text(' | $rating'),
                Text(' | $nRating'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Najbolje prodavana knjiga u historijskoj fikciji',
              style: p2,
            ),
          ),
          Center(
            child: Container(
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
              width: 300,
              height: 350,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Basket2(
                                image: image,
                                name: name,
                                price: price,
                                author: author,
                                pageCount: pageCount,
                                rating: rating,
                                nRating: nRating,
                                series: series))),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: const Text('Kindle'),
                  )),
              SizedBox(
                width: small,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Basket2(
                                  image: image,
                                  name: name,
                                  price: price,
                                  author: author,
                                  pageCount: pageCount,
                                  series: series,
                                  rating: rating,
                                  nRating: nRating,
                                ))),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: const Text('Audiobook')),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Basket2(
                                  image: image,
                                  name: name,
                                  price: price,
                                  author: author,
                                  pageCount: pageCount,
                                  series: series,
                                  rating: rating,
                                  nRating: nRating,
                                ))),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: const Text('Hardcover')),
              ),
              SizedBox(
                width: small,
              ),
              SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Basket2(
                                  image: image,
                                  name: name,
                                  price: price,
                                  author: author,
                                  pageCount: pageCount,
                                  series: series,
                                  rating: rating,
                                  nRating: nRating,
                                ))),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    child: const Text('Paperback'),
                  )),
            ],
          ),
          Divider(
            endIndent: 15,
            indent: 15,
            color: black,
          ),
          Center(
              child: Text(
            'Čitaoci $author često čitaju i ove knjige',
            style: p2,
          )),
          SizedBox(
            height: medium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/hussite2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: 150,
                height: 200,
              ),
              SizedBox(
                width: small,
              ),
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/hussite3.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: 150,
                height: 200,
              ),
            ],
          ),
          SizedBox(
            height: medium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/darktower2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: 150,
                height: 200,
              ),
              SizedBox(
                width: small,
              ),
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/darktower3.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: 150,
                height: 200,
              ),
            ],
          ),
          SizedBox(
            height: medium,
          )
        ]),
      ),
    );
  }
}
