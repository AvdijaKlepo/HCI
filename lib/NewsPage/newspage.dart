import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        foregroundColor: Colors.black,
        title: Text(
          'Pathfinder',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '23 Cozy Mystery Series for Your Next Whodunit Binge Read',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 20, letterSpacing: 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Posted by Avdija on March 24, 2023',
              textAlign: TextAlign.left,
            ),
          ),
          Divider(thickness: 1),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('6 likes | 0 comments'),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Image.asset('assets/images/news.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
                'Crime fiction has lots of interesting nooks and crannies. You’ve got your traditional detective stories (invented by Edgar Allan Poe, most historians agree) and classic mystery stories that wander off into subtypes: historical mysteries, police procedurals, legal thrillers, heist stories. '),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
                'The cozy mystery is a relatively recent term that refers to stories in which the violent and graphic elements are generally kept off-page. These gentle whodunits often come in series and center on unique and often eccentric investigators, like Mumbai police inspectors or 12-year-old chemists. One of the genuine advantages of the cozy mystery series is that if you find a book you like, you’ve instantly got a reading list of several more books. Several dozen, in some instances.'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
                'In this specially curated collection, we’ve gathered 23 top cozy mystery series along with a quick description, the series first installment, and the total number of books in the series so far. Be aware that acquiring a cozy mystery habit can result in thousands of hours of reading pleasure. In fact, we did the math, and if you want to read every title in every series on this list, you’ll want to make time for more than 200 books in total.'),
          ),
        ],
      ),
    );
  }
}
