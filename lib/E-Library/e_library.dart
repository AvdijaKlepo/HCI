// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/Reading/read.dart';
import 'package:hci/Settings/settings.dart';
import 'package:hci/Social/social.dart';
import 'package:hci/utils/style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ELibrary extends StatelessWidget {
  const ELibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[50],
        foregroundColor: black,
        title: Text(
          'Vlastita biblioteka',
          style: heading1,
        ),
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '2023 READING CHALLENGE',
                  style: heading2,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 100,
              endIndent: 100,
              color: black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Icon(Icons.menu_book_rounded),
                ),
                SizedBox(
                  width: xsmall,
                ),
                Column(
                  children: [
                    Text(
                      'Pročitali ste 3 od 30 knjiga ove godine.',
                      style: p2,
                    ),
                    SizedBox(
                      height: xsmall,
                    ),
                    LinearPercentIndicator(
                      width: 250.0,
                      lineHeight: 20,
                      barRadius: const Radius.circular(20),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.2,
                      progressColor: Colors.orange[400],
                      backgroundColor: Colors.orange[100],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: medium,
            ),
            Text(
              'Vaše police',
              style: heading2,
            ),
            SizedBox(
              height: medium,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/darktower3.jpg'),
                              fit: BoxFit.cover),
                        ),
                        width: 200,
                        height: 250,
                        margin: EdgeInsets.only(right: medium),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower2.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(45.0, 25.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower1.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                    ]),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Read(
                              image: 'assets/images/darktower3.jpg',
                              text: 'Pročitano',
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'Pročitano: ',
                        style: p2,
                      ),
                      Text(
                        '3 knjige',
                        style: p2,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/hussite2.jpg'),
                              fit: BoxFit.cover),
                        ),
                        width: 200,
                        height: 250,
                        margin: EdgeInsets.only(right: medium),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hussite3.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(45.0, 10.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower1.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower2.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(45.0, 25.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hussite1.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                    ]),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Read(
                              image: 'assets/images/darktower2.jpg',
                              text: 'Trenutno čitam',
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      Text(
                        'Trenutno čitam:',
                        style: p2,
                      ),
                      Text(
                        '6 knjige',
                        style: p2,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/darktower4.jpg'),
                              fit: BoxFit.cover),
                        ),
                        width: 200,
                        height: 250,
                        margin: EdgeInsets.only(right: medium),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower2.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(45.0, 10.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower1.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower2.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(45.0, 25.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/darktower1.jpg'),
                                fit: BoxFit.cover),
                          ),
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(right: medium),
                        ),
                      ),
                    ]),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Read(
                              image: 'assets/images/darktower4.jpg',
                              text: 'Želim da čitam',
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      Text(
                        'Želim da čitam: ',
                        style: p2,
                      ),
                      Text(
                        '13 knjige',
                        style: p2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: p2,
          unselectedLabelStyle: p2,
          selectedItemColor: Colors.black,
          currentIndex: 1,
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
                label: 'E-Biblioteka'),
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
