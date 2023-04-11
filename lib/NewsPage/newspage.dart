import 'package:flutter/material.dart';

import '../E-Library/e_library.dart';
import '../Reading/read.dart';
import '../Settings/settings.dart';
import '../Social/social.dart';
import '../utils/style.dart';

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
          'Novosti iz svijeta fikcije',
          style: heading1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '23 Cozy Mystery Series for Your Next Whodunit Binge Read',
                style: heading1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                'Posted by Avdija on March 24, 2023',
                textAlign: TextAlign.left,
                style: p2,
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                '6 likes | 0 comments',
                style: p2,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Image.asset('assets/images/news.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                'Crime fiction has lots of interesting nooks and crannies. Youve got your traditional detective stories (invented by Edgar Allan Poe, most historians agree) and classic mystery stories that wander off into subtypes: historical mysteries, police procedurals, legal thrillers, heist stories. ',
                style: p2,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                'The cozy mystery is a relatively recent term that refers to stories in which the violent and graphic elements are generally kept off-page. These gentle whodunits often come in series and center on unique and often eccentric investigators, like Mumbai police inspectors or 12-year-old chemists. One of the genuine advantages of the cozy mystery series is that if you find a book you like, you’ve instantly got a reading list of several more books. Several dozen, in some instances.',
                style: p2,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                'In this specially curated collection, weve gathered 23 top cozy mystery series along with a quick description, the series first installment, and the total number of books in the series so far. Be aware that acquiring a cozy mystery habit can result in thousands of hours of reading pleasure. In fact, we did the math, and if you want to read every title in every series on this list, you’ll want to make time for more than 200 books in total.',
                style: p2,
              ),
            ),
            SizedBox(
              height: xsmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'The Purloined Letter',
                        style: p2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/purloinedletter.jpg'),
                                  fit: BoxFit.fill)),
                          width: 170,
                          height: 200,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Read(
                                      image:
                                          'assets/images/purloinedletter.jpg',
                                      text: 'Želim da čitam',
                                    ))),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.brown)),
                        child: Text(
                          'Dodaj knjigu',
                          style: p1,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'The Hound of the Baskervilles',
                      style: p2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/sherlock.jpg'),
                                fit: BoxFit.fill)),
                        width: 170,
                        height: 200,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Read(
                                    image: 'assets/images/sherlock.jpg',
                                    text: 'Želim da čitam',
                                  ))),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.brown)),
                      child: Text(
                        'Dodaj knjigu',
                        style: p1,
                      ),
                    )
                  ],
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
          selectedLabelStyle: p2,
          unselectedLabelStyle: p2,
          selectedItemColor: Colors.black,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home_rounded),
                  ),
                ),
                label: 'Home'),
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
                label: 'Library'),
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
                label: 'Social'),
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
                label: 'Settings'),
          ]),
    );
  }
}
