import 'package:flutter/material.dart';

import '../utils/style.dart';

const List<String> list = <String>['1', '2', '3', '4'];

class Basket2 extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String author;
  final String pageCount;
  final String series;
  const Basket2(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.author,
      required this.pageCount,
      required this.series});

  @override
  State<Basket2> createState() => _Basket2State();
}

class _Basket2State extends State<Basket2> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              '${widget.name} - ${widget.series}',
              style: heading3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.author,
              style: heading4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Text(' | 4.65'),
                Text(' | 422,054 ratings'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Najbolje prodavana knjiga u historijskoj fikciji',
              style: p1,
            ),
          ),
          Center(
            child: Container(
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
              width: 300,
              height: 300,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '150\$',
              style: heading4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ukupno : 150\$',
              style: heading4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Bosna i Hercegovina, Mostar',
                  style: heading4,
                ),
                const Icon(Icons.location_on_outlined),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    underline: Container(
                      height: 5,
                    ),
                    elevation: 16,
                    value: dropdownValue,
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    }),
              ),
              Text(
                'Količina',
                style: heading4,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: SizedBox(
              width: 130,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: const Text('Kupi Odmah'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: SizedBox(
              width: 130,
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                  child: const Text('Dodaj u košaru')),
            ),
          ),
        ]),
      ),
    );
  }
}
