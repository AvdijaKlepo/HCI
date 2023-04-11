import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/style.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Vijesti iz svijeta fikcije i pathfindera',
                style: heading1,
              ),
            ),
            Divider(
              color: black,
              endIndent: 100,
              indent: 100,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/upcoming.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/n1.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/n2.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/n3.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/n4.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: black,
                    image: DecorationImage(
                      image: AssetImage('assets/images/n5.jpg'),
                    )),
                width: double.infinity,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
