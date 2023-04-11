import 'package:flutter/material.dart';

import '../utils/style.dart';

const List<String> list = <String>['1', '2', '3', '4'];
int cijena = 60;
int listnaCijena = 30;
int postarina = 30;

class Basket2 extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String author;
  final String pageCount;
  final String series;
  final String rating;
  final String nRating;
  const Basket2(
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
  State<Basket2> createState() => _Basket2State();
}

class _Basket2State extends State<Basket2> {
  String dropdownValue = list.first;

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
                  ' | ${widget.nRating}',
                  style: p2,
                ),
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
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
              width: 300,
              height: 300,
            ),
          ),
          Center(
              child: Text(
            'Kindle',
            style: heading1,
          )),
          Divider(
            endIndent: 15,
            indent: 15,
            color: black,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Listna cijena: $listnaCijena\$ + Poštarina: $postarina\$',
              style: heading4,
            ),
          ),
          Divider(
            color: black,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Ukupno : $cijena\$',
              style: heading4,
            ),
          ),
          Divider(
            color: black,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
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
                padding: const EdgeInsets.all(13.0),
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
                        cijena += 30;
                        listnaCijena += 30;
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
